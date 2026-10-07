--[[
The ruleset of the Missal of Paul VI (1970 and later editions): computes the
entry of a validated request (litcomp.request) from source/.
]]

local Date = require("litcomp.core.date")
local Entry = require("litcomp.entry")
local Temporal = require("litcomp.roman1970.temporal")
local Sanctoral = require("litcomp.roman1970.sanctoral")
local Precedence = require("litcomp.roman1970.precedence")
local Masses = require("litcomp.roman1970.masses")
local Lectionary = require("litcomp.roman1970.lectionary")
local Office = require("litcomp.roman1970.office")
local Catena = require("litcomp.roman1970.catena")

local Roman1970 = {}
Roman1970.__index = Roman1970

function Roman1970.new(source)
    return setmetatable({ source = source, contexts = {} }, Roman1970)
end

-- Per calendar: its sanctoral, Lectionary chain and Office of Readings.
function Roman1970:context(calendar)
    local ctx = self.contexts[calendar.key]
    if not ctx then
        local sanctoral = Sanctoral.new(self.source, calendar)
        ctx = {
            sanctoral = sanctoral,
            transfers = sanctoral.transfers,
            lectionary = Lectionary.new(self.source, calendar.lectionary, calendar.psalms, sanctoral.transfers),
            office = Office.new(self.source, sanctoral.transfers),
        }
        self.contexts[calendar.key] = ctx
        self.catena = self.catena or Catena.new(self.source)
    end
    return ctx
end

-- The day's celebrations with the day-level rules applied.
local function celebrations_of(ctx, dn)
    local state = Temporal.state(dn, ctx.transfers)
    local temporal = Temporal.celebration(dn, ctx.transfers)
    return Precedence.day(dn, state, temporal, ctx.sanctoral:on(dn)), state
end

local function obligation(ctx, c)
    if c.def and c.def.obligation then return true end
    for _i, id in ipairs(ctx.sanctoral.obligations) do
        if id == c.id then return true end
    end
    return false
end

-- The United States' Ascension Thursday, kept by some provinces (source/calendars/US.lua).
local function variants(ctx, dn)
    local rule = ctx.sanctoral.variants.ascension_thursday
    if not rule then return nil end
    local d = Temporal.dates(Date.year(dn), ctx.transfers)
    local thursday = d.easter + 39
    if dn ~= thursday and dn ~= d.ascension then return nil end
    local id = (dn == thursday) and "ascension-of-the-lord" or "easter-7-sunday"
    return { {
        variant = "ascension-thursday", places = rule.provinces,
        celebration = { id = id, title = (dn == thursday) and "celebration.ascension-of-the-lord" or "day.easter-7-sunday",
            rank = (dn == thursday) and "solemnity" or "sunday", colors = { "white" } },
    } }
end

-- Proper solemnities in the Table of Liturgical Days.
local PROPER_SOLEMNITY = 4

function Roman1970:entry(request)
    local ctx = self:context(request.calendar)
    local dn = request.dn
    local celebrations, state = celebrations_of(ctx, dn)
    local tomorrow = (celebrations_of(ctx, dn + 1))[1]
    local masses, rites = Masses.of_day(dn, celebrations[1], ctx.transfers, tomorrow)
    for i = 2, #celebrations do
        if celebrations[i].role == "optional" then
            table.insert(masses, { celebration = celebrations[i].id, kind = "optional" })
        elseif celebrations[i].role == "impeded" and celebrations[1].precedence > PROPER_SOLEMNITY then
            -- Where the celebration is a proper solemnity (the title of a
            -- church, a principal patron, a religious family's founder), it
            -- outranks this day (General Norms 59.4).
            table.insert(masses, { celebration = celebrations[i].id, kind = "proper-solemnity" })
        end
    end
    Masses.flags(dn, masses, celebrations, ctx.transfers)
    ctx.lectionary:attach(dn, masses, celebrations)
    -- A proper solemnity is shown only with readings (none for a feast of
    -- the Lord without its own).
    for i = #masses, 1, -1 do
        if masses[i].kind == "proper-solemnity" and not masses[i].readings then table.remove(masses, i) end
    end
    local rank_of = {}
    for _i, c in ipairs(celebrations) do rank_of[c.id] = c.rank end
    for _i, m in ipairs(masses) do
        m.catena = self.catena:for_mass(m.readings, rank_of[m.celebration])
    end
    local office = ctx.office:select(dn, celebrations)
    local sunday, weekday = Temporal.cycles(dn)
    for _i, c in ipairs(celebrations) do c.obligation = obligation(ctx, c) end
    return Entry.build({
        date = request.date, dn = dn, calendar = request.calendar.key, missal = request.missal.key,
        season = state.season, week = state.week,
        cycles = { sunday = sunday, weekday = weekday, psalter = Temporal.psalter_week(state.week) },
        celebrations = celebrations, rites = rites, masses = masses, office = office,
        variants = variants(ctx, dn), title_of = function(id)
            if id == "easter-sunday" then return "celebration.easter-sunday" end
            for _i, c in ipairs(celebrations) do if c.id == id then return c.title end end
            return "celebration." .. id
        end,
    })
end

return Roman1970
