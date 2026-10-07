--[[
Translation tables: i18n/<language>.lua maps every tag to its text in that
language (flat: { ["rank.memorial"] = "Memoria", ... }).

tools/lua/i18n_check.lua (in CI) guarantees that every tag the engine can produce is in every
table. Should a tag still be missing on a device, text() falls back to
English, then to the tag itself, rather than show nothing.
]]

local I18n = {}
I18n.__index = I18n

function I18n.new(source, language)
    local table_ = source:get("i18n/" .. language)
    local english = (language ~= "en") and source:find("i18n/en") or nil
    return setmetatable({ language = language, table = table_, english = english }, I18n)
end

--- The text of a tag in this language, or nil.
function I18n:get(tag)
    return self.table[tag]
end

--- The text of a tag, never nil (see the header for the fallbacks).
function I18n:text(tag)
    if tag == nil then return "" end
    return self.table[tag] or (self.english and self.english[tag]) or tag
end

--- A template with {name} placeholders filled from params.
function I18n:format(tag, params)
    return (self:text(tag):gsub("{([%w_]+)}", function(name)
        local value = params[name]
        return value ~= nil and tostring(value) or ("{" .. name .. "}")
    end))
end

return I18n
