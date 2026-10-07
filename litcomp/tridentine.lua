--[[
The ruleset of the Roman Missal before 1970 (1570-1962 editions): the
General Roman Calendar only, from tables computed by Divinum Officium
(source/tridentine/). An edition's year depends only on its type, the date
of Easter and whether it is a leap year.
]]

local Citation = require("litcomp.core.citation")
local Computus = require("litcomp.core.computus")
local Date = require("litcomp.core.date")
local Entry = require("litcomp.entry")

local Tridentine = {}
Tridentine.__index = Tridentine

function Tridentine.new(source)
    return setmetatable({ source = source, parsed = {} }, Tridentine)
end

local function year_type(year)
    local _y, month, day = Date.civil(Computus.easter(year))
    return string.format("%d-%d-%d", month, day, Date.is_leap(year) and 1 or 0)
end

function Tridentine:citations(text)
    if not text then return nil end
    local forms = self.parsed[text]
    if not forms then
        forms = assert(Citation.parse(text))
        self.parsed[text] = forms
    end
    return forms
end

local function reading(slot, forms)
    return { slot = slot, forms = forms }
end

function Tridentine:entry(request)
    local edition = self.source:get("source/tridentine/" .. request.missal.key)
    local propers = self.source:get("source/tridentine/propers").propers
    local dn = request.dn
    local year = Date.year(dn)
    local codes = assert(edition.types[year_type(year)], "no table for the year type")
    local position = (dn - Date.day(year, 1, 1)) * 2 + 1
    local c1, c2 = codes:byte(position, position + 1)
    local record = assert(edition.days[(c1 - 33) * 94 + (c2 - 33) + 1], "no day record")
    local primary_id = "tridentine-" .. record.title
    local celebrations = { {
        id = primary_id, title = "tridentine." .. record.title, role = "primary",
        rank = record.rank, colors = record.colors,
    } }
    for i, title in ipairs(record.commemorations or {}) do
        table.insert(celebrations, {
            id = string.format("tridentine-c%d-%s", i, title), title = "tridentine." .. title,
            role = "commemoration", rank = "commemoration", colors = {},
        })
    end
    local masses = {}
    for _i, m in ipairs(record.masses) do
        local proper = propers[m.proper]
        local readings = {}
        for _j, lesson in ipairs(proper.lessons or {}) do table.insert(readings, reading("lesson", self:citations(lesson))) end
        if proper.epistle then table.insert(readings, reading("epistle", self:citations(proper.epistle))) end
        if proper.gospel then table.insert(readings, reading("gospel", self:citations(proper.gospel))) end
        table.insert(masses, {
            celebration = primary_id, kind = m.kind or "day", gloria = m.gloria, creed = m.creed,
            sequences = {}, readings = readings,
        })
    end
    return Entry.build({
        date = request.date, dn = dn, calendar = request.calendar.key, missal = request.missal.key,
        season = record.season, week = record.week,
        celebrations = celebrations, masses = masses,
        title_of = function() return "tridentine." .. record.title end,
    })
end

return Tridentine
