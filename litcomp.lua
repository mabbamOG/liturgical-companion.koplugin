--[[
Liturgical Companion: the entry engine.

    local Litcomp = require("litcomp")
    local lc = Litcomp.open(plugin_dir)
    local entry, rejection = lc:entry{ date = "2026-10-01", calendar = "IT", missal = "auto" }
    local html = lc:render(entry, "it")

Pure Lua 5.1 / LuaJIT; it never requires a KOReader module. See
docs/ARCHITECTURE.md for the entry, the rulesets and the source data.
]]

local Source = require("litcomp.core.source")
local Request = require("litcomp.request")
local Entry = require("litcomp.entry")
local I18n = require("litcomp.i18n")

local Litcomp = {}
Litcomp.__index = Litcomp

local RULESETS = { roman1970 = "litcomp.roman1970", tridentine = "litcomp.tridentine" }

--- The engine over a plugin folder (its source/ and i18n/).
function Litcomp.open(root)
    local source = Source.new(root)
    return setmetatable({
        root = root, source = source, registry = source:get("source/registry"),
        rulesets = {}, languages = {},
    }, Litcomp)
end

function Litcomp:ruleset(name)
    local ruleset = self.rulesets[name]
    if not ruleset then
        ruleset = require(RULESETS[name]).new(self.source)
        self.rulesets[name] = ruleset
    end
    return ruleset
end

--- The entry for a request { date, calendar, missal = "auto" | key }, or nil
--- and a rejection (litcomp.request).
function Litcomp:entry(request)
    local normalized, rejection = Request.normalize(self.registry, request)
    if not normalized then return nil, rejection end
    local entry = self:ruleset(normalized.missal.ruleset):entry(normalized)
    local problems = Entry.check(entry)
    if #problems > 0 then error("invalid entry for " .. normalized.date .. ": " .. table.concat(problems, "; ")) end
    return entry
end

--- The Missal edition in force on an ISO date (registry record), or nil.
function Litcomp:missal_for(date)
    return Request.missal_for(self.registry, date)
end

--- A language's translation table (litcomp.i18n).
function Litcomp:i18n(language)
    local i18n = self.languages[language]
    if not i18n then
        i18n = I18n.new(self.source, language)
        self.languages[language] = i18n
    end
    return i18n
end

--- The embedded texts (litcomp.texts); empty when the package has none.
function Litcomp:texts()
    if not self.text_store then
        self.text_store = require("litcomp.texts").new(self.source, self.registry)
    end
    return self.text_store
end

--- The embedded pictures (litcomp.pictures); empty when the package has none.
function Litcomp:pictures()
    if not self.picture_store then self.picture_store = require("litcomp.pictures").new(self.source) end
    return self.picture_store
end

--- The Rosary (litcomp.rosary).
function Litcomp:rosary()
    if not self.rosary_store then self.rosary_store = require("litcomp.rosary").new(self.source) end
    return self.rosary_store
end

--- The panel HTML of an entry in a language. options: texts (show embedded
--- texts as collapsible sections), open (the sections shown open), rosary
--- (a scheme, "luminous" or "traditional": show the Rosary of the day) and
--- litany (with the texts, the Litany of Loreto after the Rosary) and pictures
--- (show the celebrations' pictures; their files are named relative to
--- litcomp.pictures.DIR, which the caller gives the HTML viewer as its
--- resource directory).
function Litcomp:render(entry, language, options)
    options = options or {}
    local rosary = options.rosary and self:rosary():of_day(entry, options.rosary) or nil
    return require("litcomp.render.html").entry(entry, self:i18n(language), {
        texts = options.texts and self:texts() or nil, language = language, open = options.open,
        rosary = rosary, litany = options.litany, pictures = options.pictures and self:pictures() or nil,
        prayers = rosary and options.texts and self:rosary():prayers(language) or nil,
    })
end

return Litcomp
