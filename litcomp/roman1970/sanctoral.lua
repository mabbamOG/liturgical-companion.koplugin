--[[
The sanctoral cycle of a calendar: the General Roman Calendar with the
calendar's own changes (source/calendars/), and the date of each celebration
in a given year.

Date rules (source/calendars/*.lua):
    "MM-DD"                                  a fixed date
    { fn = "annunciation", offset = 1 }      a named date, plus days
    { month = 9, nth = 2, weekday = "sunday" }
    { month = 10, last = "sunday" }
    exceptions = { { when = { weekday = "sunday" }, move = { offset = 1 } },
                   { when = { between = { "palm_sunday", "divine_mercy_sunday" }, inclusive = true },
                     move = { fn = "palm_sunday", offset = -1 } } }
]]

local Date = require("litcomp.core.date")
local Temporal = require("litcomp.roman1970.temporal")

local Sanctoral = {}
Sanctoral.__index = Sanctoral

local WEEKDAY = {}
for i, name in ipairs(Date.WEEKDAYS) do WEEKDAY[name] = i end

--- A calendar's sanctoral: general celebrations, then the calendar's own
--- (replacing a general one with the same id).
function Sanctoral.new(source, calendar)
    local by_id, order = {}, {}
    local function add(list)
        for _i, def in ipairs(list or {}) do
            if not by_id[def.id] then table.insert(order, def.id) end
            by_id[def.id] = def
        end
    end
    add(source:get("source/calendars/general-roman").celebrations)
    local own = calendar.key ~= "GR" and source:get("source/calendars/" .. calendar.key) or {}
    add(own.celebrations)
    local list = {}
    for _i, id in ipairs(order) do table.insert(list, by_id[id]) end
    return setmetatable({
        source = source, calendar = calendar, list = list, by_id = by_id,
        transfers = own.transfers or {}, obligations = own.obligations or {},
        variants = own.variants or {}, years = {},
    }, Sanctoral)
end

--- The day number of a named date in a year, or nil if it has none.
function Sanctoral:named(year, name)
    local d = Temporal.dates(year)
    if name == "palm_sunday" then return d.palm_sunday end
    if name == "easter_sunday" then return d.easter end
    if name == "pentecost_sunday" then return d.pentecost end
    if name == "divine_mercy_sunday" then return d.divine_mercy end
    if name == "presentation_of_the_lord" then return Date.day(year, 2, 2) end
    if name == "annunciation" then
        -- In Holy Week or the Easter octave it moves to the Monday after.
        local value = Date.day(year, 3, 25)
        if value >= d.palm_sunday and value <= d.divine_mercy then value = d.divine_mercy + 1 end
        return value
    end
    if name == "mary_mother_of_the_church" then return d.pentecost + 1 end
    if name == "immaculate_heart_of_mary" then return d.immaculate_heart end
    if name == "nativity_of_john_the_baptist" then return Date.day(year, 6, 24) end
    if name == "peter_and_paul_apostles" then return Date.day(year, 6, 29) end
    if name == "transfiguration" then return Date.day(year, 8, 6) end
    if name == "assumption" then return Date.day(year, 8, 15) end
    if name == "exaltation_of_the_holy_cross" then return Date.day(year, 9, 14) end
    if name == "all_saints" then return Date.day(year, 11, 1) end
    if name == "immaculate_conception_of_mary" then
        -- A Sunday of Advent takes precedence: it moves to the Monday.
        local value = Date.day(year, 12, 8)
        if Date.weekday(value) == Date.SUNDAY then value = value + 1 end
        return value
    end
    if name == "lunar_new_year" or name == "sunday_on_or_after_lunar_new_year" then
        local table_ = self.source:get("source/astronomy/lunar-new-year")
        local offset = table_.offsets[year - table_.first + 1]
        if not offset then error(string.format("Lunar New Year is not computed for %d", year)) end
        local value = Date.day(year, 1, 1) + offset
        if name == "sunday_on_or_after_lunar_new_year" then value = Date.on_or_after(value, Date.SUNDAY) end
        return value
    end
    error("unknown date function " .. tostring(name))
end

local function resolve(self, year, def)
    local rule = def.date
    local dn
    if type(rule) == "string" then
        local month, day = rule:match("^(%d%d)%-(%d%d)$")
        dn = Date.day(year, tonumber(month), tonumber(day))
    elseif rule.fn then
        dn = self:named(year, rule.fn) + (rule.offset or 0)
    elseif rule.nth then
        local first = Date.day(year, rule.month, 1)
        dn = Date.on_or_after(first, WEEKDAY[rule.weekday]) + 7 * (rule.nth - 1)
    elseif rule.last then
        local next_month = (rule.month == 12) and Date.day(year + 1, 1, 1) or Date.day(year, rule.month + 1, 1)
        dn = Date.on_or_after(next_month - 7, WEEKDAY[rule.last])
    else
        error("bad date rule for " .. def.id)
    end
    for _i, exception in ipairs(def.exceptions or {}) do
        local when, hit = exception.when, false
        if when.weekday then
            hit = Date.weekday(dn) == WEEKDAY[when.weekday]
        else
            local first, last = self:named(year, when.between[1]), self:named(year, when.between[2])
            if when.inclusive then hit = dn >= first and dn <= last else hit = dn > first and dn < last end
        end
        if hit then
            local move = exception.move
            if move.fn then dn = self:named(year, move.fn) end
            dn = dn + (move.offset or 0)
        end
    end
    return dn
end

--- The celebrations of a day (definitions), in source order.
function Sanctoral:on(dn)
    local year = Date.year(dn)
    local by_day = self.years[year]
    if not by_day then
        by_day = {}
        for _i, def in ipairs(self.list) do
            local when = resolve(self, year, def)
            by_day[when] = by_day[when] or {}
            table.insert(by_day[when], def)
        end
        self.years[year] = by_day
    end
    return by_day[dn] or {}
end

return Sanctoral
