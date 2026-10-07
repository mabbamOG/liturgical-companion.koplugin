--[[
The second reading of the Office of Readings (Liturgy of the Hours).

source/office/readings.lua is the catalogue (author, work, locator per reading)
and source/office/assignments.lua assigns readings by key:

    temporal[<office day key>]    the Proper of Seasons
    celebrations[<id>]            the Proper of Saints and the solemnities
    commons[<common>]             the Commons (martyrs, pastors, virgins...)

A day's reading is chosen by rule, never by name:
  * a temporal day: its office day key;
  * a celebration: its own reading, else the first of its commons that has one,
    else what its definition says (office = "weekday": the weekday's reading;
    office = "<id>": that celebration's);
  * optional memorials and commemorations add their reading as an alternative
    (General Instruction of the Liturgy of the Hours, 235-239).
]]

local Date = require("litcomp.core.date")
local Temporal = require("litcomp.roman1970.temporal")

local Office = {}
Office.__index = Office

--- The office day key of a day's temporal celebration: its id, or "12-17"..
--- "12-31" (late Advent and Christmas weekdays), "before-epiphany-<weekday>",
--- "after-epiphany-<weekday>" or "second-sunday-after-christmas".
function Office.temporal_key(dn, transfers)
    local temporal = Temporal.celebration(dn, transfers)
    if temporal.title == "celebration." .. temporal.id then return temporal.id end
    local year, month, day = Date.civil(dn)
    local d = Temporal.dates(year, transfers)
    local wd = Date.weekday(dn)
    -- From 17 December the readings follow the date, the Fourth Sunday of
    -- Advent's too; within the Christmas octave the weekdays do.
    if month == 12 and ((day >= 17 and day <= 24) or (day >= 29 and wd ~= Date.SUNDAY)) then
        return string.format("12-%02d", day)
    end
    if month == 1 and day >= 2 and dn < d.epiphany then
        if wd == Date.SUNDAY then return "second-sunday-after-christmas" end
        return "before-epiphany-" .. Date.WEEKDAYS[wd]
    end
    if month == 1 and dn > d.epiphany and dn < d.baptism and wd ~= Date.SUNDAY then
        return "after-epiphany-" .. Date.WEEKDAYS[wd]
    end
    return temporal.id
end

function Office.new(source, transfers)
    return setmetatable({
        readings = source:get("source/office/readings"),
        assignments = source:get("source/office/assignments"),
        transfers = transfers,
    }, Office)
end

-- The reading ids assigned to a celebration and their basis, or nil and
-- "weekday" when it keeps the weekday's reading.
function Office:for_celebration(c)
    local own = self.assignments.celebrations[c.id]
    if own then return own, "proper" end
    local office = c.def and c.def.office
    if office == "weekday" then return nil, "weekday" end
    if office and self.assignments.celebrations[office] then return self.assignments.celebrations[office], "proper" end
    for _i, common in ipairs((c.def and c.def.commons) or {}) do
        local list = self.assignments.commons[common]
        -- The martyrs' Commons: one martyr, or several (the celebration's "plural").
        if list and list.one then list = (c.def.plural and list.several) or list.one end
        if list then return list, "common" end
    end
    return nil
end

local function entry(self, id, basis, celebration)
    local reading = self.readings[id]
    return {
        id = id, basis = basis, celebration = celebration,
        author = reading.author, work = reading.work, locator = reading.locator,
    }
end

--- { reading, alternatives } for a day; reading is nil only when neither the
--- celebration nor the day has an assigned reading (a gap tools/check reports).
function Office:select(dn, celebrations)
    local primary = celebrations[1]
    local chosen = {}
    local function add(list, basis, celebration)
        for _i, id in ipairs(list or {}) do table.insert(chosen, entry(self, id, basis, celebration)) end
    end
    if primary.temporal then
        add(self.assignments.temporal[Office.temporal_key(dn, self.transfers)]
            or self.assignments.celebrations[primary.id], "temporal", primary.id)
    else
        local list, basis = self:for_celebration(primary)
        if list then
            add(list, basis, primary.id)
        else
            add(self.assignments.temporal[Office.temporal_key(dn, self.transfers)], basis or "temporal", primary.id)
        end
    end
    for i = 2, #celebrations do
        local c = celebrations[i]
        if c.role == "optional" or c.role == "commemoration" then
            if c.temporal then
                add(self.assignments.temporal[Office.temporal_key(dn, self.transfers)], "temporal", c.id)
            else
                local list, basis = self:for_celebration(c)
                add(list, basis, c.id)
            end
        end
    end
    local reading = table.remove(chosen, 1)
    return { reading = reading, alternatives = chosen }
end

return Office
