--[[
The plugin's settings in KOReader's settings file (one table under a key):

    calendar   a calendar key (source/registry.lua), default "GR"
    missal     "auto" (the edition in force on the date) or an edition key
    language   "auto" (the calendar's own language) or a language code
    announce   show the day when a Bible is opened (boolean)
    texts      show embedded texts, when installed, as collapsible sections (boolean)
    rosary     the Rosary of the day: "luminous" (with the Mysteries of Light),
               "traditional" (fifteen mysteries) or "off"
    litany     the Litany of Loreto after the Rosary (boolean)
    pictures   show the celebrations' pictures, when installed (boolean)
]]

local Settings = {}
Settings.__index = Settings

local KEY = "liturgical_companion"
local DEFAULTS = { calendar = "GR", missal = "auto", language = "auto", announce = false, texts = true,
    rosary = "luminous", litany = true, pictures = true }

function Settings.new(store)
    return setmetatable({ store = store }, Settings)
end

function Settings:all()
    return self.store:readSetting(KEY) or {}
end

function Settings:get(name)
    local value = self:all()[name]
    -- Settings written by v0.3 used other names.
    local legacy = { calendar = "profile", missal = "edition", announce = "announce_on_open" }
    if value == nil and legacy[name] then value = self:all()[legacy[name]] end
    if value == nil or type(value) == "function" then return DEFAULTS[name] end
    return value
end

function Settings:set(name, value)
    local all = self:all()
    all[name] = value
    self.store:saveSetting(KEY, all)
end

return Settings
