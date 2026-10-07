--[[
The readings of each Mass, from the Lectionary tables in source/lectionary/:
the calendar's own edition first (if it has one), then the base table.

A Mass's readings are looked up by key, in order:
  * the Easter Vigil: the Vigil readings (temporal "holy-saturday");
  * a vigil: the following day's temporal key or celebration, kind "vigil";
  * the temporal celebration's Mass: the day's temporal key;
  * a celebration's Mass: the readings of its calendar's own title (a patron's
    feast, e.g. "benedict-of-nursia-abbot-patron-of-europe"), else of its id;
    a memorial (or
    optional memorial, commemoration, day of prayer) without them takes the
    weekday's (Lectionary for Mass, Introduction 83); a feast or solemnity
    without them, its Common's (source/lectionary/commons.lua): the first
    option of each reading, the second reading on solemnities only.
Psalm references are given in the calendar's psalm numbering.
]]

local Citation = require("litcomp.core.citation")
local Psalms = require("litcomp.roman1970.psalms")
local Temporal = require("litcomp.roman1970.temporal")

local Lectionary = {}
Lectionary.__index = Lectionary

local WEEKDAY_READING_RANKS = { memorial = true, optional_memorial = true, commemoration = true, day_of_prayer = true }
-- Masses that use the readings of the celebration's day Mass.
local AS_DAY = { optional = true, ["proper-solemnity"] = true, first = true, second = true, third = true }

--- tables: the edition chain, e.g. { "IT", "base" }; numbering: the
--- calendar's psalm numbering ("hebrew" or "greek_vulgate").
function Lectionary.new(source, tables, numbering, transfers)
    local chain = {}
    for _i, name in ipairs(tables) do
        local data = source:find("source/lectionary/" .. name)
        if data then table.insert(chain, data) end
    end
    return setmetatable({
        chain = chain, numbering = numbering, transfers = transfers, parsed = {},
        commons = source:get("source/lectionary/commons"),
    }, Lectionary)
end

-- A raw set, or a cycle map: { A=..., B=..., C=... }, { I=..., II=... }, { ["A|I"]=... }.
local function pick(entry, sunday, weekday)
    if entry[1] then return entry end
    return entry[sunday .. "|" .. weekday] or entry[sunday] or entry[weekday]
end

function Lectionary:readings_of(set)
    local readings = self.parsed[set]
    if readings then return readings end
    readings = {}
    for _i, item in ipairs(set) do
        local forms = assert(Citation.parse(item[2]))
        table.insert(readings, { slot = item[1], numbering = item[3], forms = forms })
    end
    readings = Psalms.renumber(readings, self.numbering)
    self.parsed[set] = readings
    return readings
end

--- The readings under (group, id, kind) for the cycles of day `cycles_dn`, or nil.
function Lectionary:lookup(group, id, kind, cycles_dn)
    local sunday, weekday = Temporal.cycles(cycles_dn)
    for _i, data in ipairs(self.chain) do
        local by_id = data[group] and data[group][id]
        local entry = by_id and by_id[kind]
        -- A Mass kind may name another whose readings it uses ("vigil = 'day'").
        if type(entry) == "string" then return self:lookup(group, id, entry, cycles_dn) end
        local set = entry and pick(entry, sunday, weekday)
        if set then return self:readings_of(set) end
    end
    return nil
end

-- The Common a celebration's id suggests, for one whose definition names
-- none ("...-bishop", "our-lady-of-...").
local INFERRED = {
    -- Celebrations of the Lord have no Common.
    { "jesus", false }, { "%-lord", false }, { "christ", false }, { "holy%-cross", false }, { "holy%-child", false },
    { "martyrs?$", "martyrs" }, { "virgins?$", "virgins" },
    { "%-bishops?$", "pastors" }, { "%-priests?$", "pastors" }, { "%-pope$", "pastors" },
    { "%-deacons?$", "pastors" }, { "%-abbot$", "abbots" }, { "%-abbess$", "nuns" },
    { "%-religious$", "religious" }, { "%-monk$", "monks" }, { "%-hermit$", "monks" },
    { "^our%-lady", "blessed_virgin_mary" }, { "blessed%-virgin%-mary$", "blessed_virgin_mary" },
    { "%-of%-mary$", "blessed_virgin_mary" }, { "^dedication%-of%-", "dedication_anniversary__inside" },
}

local function inferred_commons(c)
    for _i, rule in ipairs(INFERRED) do
        if c.id:find(rule[1]) then return rule[2] and { rule[2] } or nil end
    end
    return { "saints" }
end

--- The readings of a celebration from its Common, and the Common's name, or
--- nil. infer: when the definition names no Common, take the one its id
--- suggests (a saint's Mass kept as a proper solemnity).
function Lectionary:from_common(c, dn, infer)
    local commons = c.def and c.def.commons
    if infer and (not commons or #commons == 0) then commons = inferred_commons(c) end
    for _i, category in ipairs(commons or {}) do
        local name = self.commons.categories[category]
        local common = name and self.commons.commons[name]
        if common then
            local easter = Temporal.state(dn, self.transfers).season == "easter"
            local first = (easter and common.first_reading_easter[1]) or common.first_reading[1]
            local set = { { "first_reading", first }, { "psalm", common.psalm[1], "hebrew" } }
            if c.rank == "solemnity" and common.second_reading[1] then
                table.insert(set, { "second_reading", common.second_reading[1] })
            end
            if common.acclamation[1] then table.insert(set, { "acclamation", common.acclamation[1] }) end
            table.insert(set, { "gospel", common.gospel[1] })
            return self:readings_of(set), name
        end
    end
    return nil
end

--- Sets readings on each Mass of a day (Masses from litcomp.roman1970.masses).
function Lectionary:attach(dn, masses, celebrations)
    local transfers = self.transfers
    local temporal = Temporal.celebration(dn, transfers)
    local rank_of, retitle, by_id = {}, {}, {}
    for _i, c in ipairs(celebrations) do
        rank_of[c.id] = c.rank
        by_id[c.id] = c
        if c.def and c.def.title then retitle[c.id] = c.def.title end
    end
    local weekday_readings
    for _i, m in ipairs(masses) do
        local kind = AS_DAY[m.kind] and "day" or m.kind
        local readings
        if kind == "easter-vigil" then
            readings = self:lookup("temporal", "holy-saturday", "day", dn)
        elseif kind == "vigil" or kind == "extended-vigil" then
            local following = dn + 1
            if m.celebration == Temporal.celebration(following, transfers).id then
                readings = self:lookup("temporal", Temporal.lectionary_key(following, transfers), kind, following)
            else
                readings = self:lookup("celebration", m.celebration, kind, following)
            end
        elseif m.celebration == temporal.id then
            readings = self:lookup("temporal", Temporal.lectionary_key(dn, transfers), kind, dn)
            if kind == "day" then weekday_readings = readings end
        else
            local alias = by_id[m.celebration] and by_id[m.celebration].def and by_id[m.celebration].def.readings
            readings = (retitle[m.celebration] and self:lookup("celebration", retitle[m.celebration], kind, dn))
                or self:lookup("celebration", m.celebration, kind, dn)
                or (alias and alias ~= "weekday" and self:lookup("celebration", alias, kind, dn))
        end
        m.readings = readings
    end
    -- Memorials without their own readings take the weekday's.
    weekday_readings = weekday_readings or self:lookup("temporal", Temporal.lectionary_key(dn, transfers), "day", dn)
    for _i, m in ipairs(masses) do
        if not m.readings and (m.kind == "day" or AS_DAY[m.kind]) then
            local rank = rank_of[m.celebration]
            local def = by_id[m.celebration] and by_id[m.celebration].def
            if m.kind == "proper-solemnity" then
                -- A solemnity never takes the weekday's readings.
                if by_id[m.celebration] then m.readings, m.common = self:from_common(by_id[m.celebration], dn, true) end
            elseif WEEKDAY_READING_RANKS[rank] or (def and def.readings == "weekday") then
                m.readings = weekday_readings
                m.weekday_readings = weekday_readings ~= nil
            elseif (rank == "feast" or rank == "solemnity") and by_id[m.celebration] then
                m.readings, m.common = self:from_common(by_id[m.celebration], dn)
            end
        end
    end
end

return Lectionary
