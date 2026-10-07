--[[
The Rosary of the day: the set of mysteries a day's weekday (and, in the
traditional scheme, its season on Sundays) calls for. source/rosary.lua holds
the sets, their mysteries with their Scripture passages, and the schemes.

    local set = Rosary.new(source):of_day(entry, "luminous")
    -- { id = "joyful", mysteries = { { id, citation, forms }... } }

The prayers themselves (Our Father, Hail Mary, the Litany of Loreto...) are
embedded texts, per language: texts/prayers/<language>.lua.
]]

local Citation = require("litcomp.core.citation")
local Date = require("litcomp.core.date")

local Rosary = {}
Rosary.__index = Rosary

Rosary.SCHEMES = { "luminous", "traditional" }

function Rosary.new(source)
    local data = source:get("source/rosary")
    -- Citations parsed once, in the entry readings' form (book tags).
    for _id, set in pairs(data.sets) do
        for _i, m in ipairs(set.mysteries) do
            if not m.forms then
                m.forms = assert(Citation.parse(m.citation))
                for _j, ranges in ipairs(m.forms) do
                    for _k, r in ipairs(ranges) do r.book = "book." .. r.book end
                end
            end
        end
    end
    return setmetatable({ data = data, source = source }, Rosary)
end

local SUNDAY_BY_SEASON = {
    advent = "joyful", christmas = "joyful", time_after_epiphany = "joyful", septuagesima = "joyful",
    lent = "sorrowful", passiontide = "sorrowful", easter_triduum = "sorrowful",
}

--- The set of mysteries for an entry's day in a scheme ("luminous" or
--- "traditional"), or nil for an unknown scheme.
function Rosary:of_day(entry, scheme)
    local days = self.data.schemes[scheme]
    if not days then return nil end
    local name = entry.weekday:gsub("^weekday%.", "")
    local weekday = 7
    for i, n in ipairs(Date.WEEKDAYS) do if n == name then weekday = i end end
    local set = days[weekday]
    if scheme == "traditional" and weekday == 7 then
        local season = entry.season and entry.season:gsub("^season%.", "")
        set = SUNDAY_BY_SEASON[season] or "glorious"
        -- Ordinary Time before Lent counts with the Christmas cycle.
        if season == "ordinary_time" and tonumber(entry.date:sub(6, 7)) <= 3 then set = "joyful" end
    end
    return self.data.sets[set]
end

--- The prayers of the Rosary in a language (texts/prayers/<language>.lua),
--- or nil when they are not installed.
function Rosary:prayers(language)
    return self.source:find("texts/prayers/" .. language)
end

return Rosary
