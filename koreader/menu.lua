--[[
The plugin's entries in KOReader's main menu (Tools → More tools).
]]

local InfoMessage = require("ui/widget/infomessage")
local UIManager = require("ui/uimanager")
local T = require("ffi/util").template
local _ = require("gettext")

local Menu = {}

-- Each language in its own name.
local LANGUAGES = {
    { "en", "English" }, { "la", "Latina" }, { "it", "Italiano" }, { "de", "Deutsch" },
    { "fr", "Français" }, { "es", "Español" }, { "pt", "Português" }, { "pl", "Polski" },
    { "ru", "Русский" }, { "zh-Hans", "简体中文" }, { "zh-Hant", "繁體中文" },
}
Menu.LANGUAGES = LANGUAGES

local REPOSITORY_URL = "https://github.com/mabbamOG/liturgical-companion.koplugin"

local function radio(text, checked, choose, help)
    return {
        text = text, help_text = help, radio = true, keep_menu_open = true,
        checked_func = checked, callback = choose,
    }
end

local function calendars(plugin)
    local items = {}
    for _i, key in ipairs(plugin:calendars_by_name()) do
        local prefix = (key == "GR") and (plugin.GLYPH_GLOBE .. " ") or ""
        table.insert(items, radio(prefix .. plugin:calendar_name(key),
            function() return plugin.settings:get("calendar") == key end,
            function() plugin.settings:set("calendar", key) end))
    end
    return items
end

local function missals(plugin)
    local settings = plugin.settings
    local items = { radio(_("Automatic (by date)"),
        function() return settings:get("missal") == "auto" end,
        function() settings:set("missal", "auto") end,
        _("Use the Missal in force on the day shown: the Roman Missal of Paul VI from Advent 1969, older editions before.")) }
    items[1].separator = true
    local list = plugin.lc.registry.missals
    for i = #list, 1, -1 do
        local missal = list[i]
        table.insert(items, radio(plugin:ui_text("missal." .. missal.key),
            function() return settings:get("missal") == missal.key end,
            function() settings:set("missal", missal.key) end,
            T(_("Always use this edition, from %1 onwards. Editions before 1970 follow the General Roman Calendar."), missal.first_year)))
    end
    return items
end

local function languages(plugin)
    local settings = plugin.settings
    local items = { radio(_("The calendar's language"),
        function() return settings:get("language") == "auto" end,
        function() settings:set("language", "auto") end) }
    items[1].separator = true
    for _i, pair in ipairs(LANGUAGES) do
        table.insert(items, radio(pair[2],
            function() return settings:get("language") == pair[1] end,
            function() settings:set("language", pair[1]) end))
    end
    return items
end

local function rosary(plugin)
    local settings = plugin.settings
    local function choice(text, value, help)
        return radio(text, function() return settings:get("rosary") == value end,
            function() settings:set("rosary", value) end, help)
    end
    local items = {
        choice(_("With the Mysteries of Light"), "luminous",
            _("Joyful on Monday and Saturday, Sorrowful on Tuesday and Friday, Glorious on Wednesday and Sunday, Luminous on Thursday (Rosarium Virginis Mariae, 2002).")),
        choice(_("Traditional (fifteen mysteries)"), "traditional",
            _("Joyful on Monday and Thursday, Sorrowful on Tuesday and Friday, Glorious on Wednesday and Saturday; on Sundays by season.")),
        choice(_("Do not show"), "off"),
    }
    items[#items].separator = true
    table.insert(items, {
        text = _("Litany of Loreto"), keep_menu_open = true,
        help_text = _("With the texts installed, the Litany of Loreto follows the Rosary's prayers."),
        checked_func = function() return settings:get("litany") end,
        callback = function() settings:set("litany", not settings:get("litany")) end,
    })
    return items
end

local function about(plugin)
    local first, last = plugin:year_range()
    local names = {}
    for _i, key in ipairs(plugin:calendars_by_name()) do table.insert(names, plugin:calendar_name(key)) end
    UIManager:show(InfoMessage:new{ text = T(_([[
Liturgical Companion %1

Offline daily references for the day you are reading: the full name of the day, the saints and martyrs, the Mass readings, the Office of Readings, and the Gospel commentary (Catena Aurea), in any supported calendar and language.

Repository: %2
Calendars: %3
Years: %4–%5

Every day is computed on this device from the liturgical rules and reference tables. Not an official liturgical book.]]),
        plugin.version or "?", REPOSITORY_URL, table.concat(names, "; "), first, last) })
end

function Menu.items(plugin)
    local today = function() return os.date("%Y-%m-%d") end
    return {
        text = _("Liturgical companion"),
        sorting_hint = "more_tools",
        sub_item_table = {
            { text = _("Today's references"), keep_menu_open = true,
              callback = function() plugin:show(today()) end },
            { text = _("Choose a date…"), keep_menu_open = true,
              callback = function() plugin.panel:choose_date(today()) end },
            { text = _("Country"), sub_item_table_func = function() return calendars(plugin) end },
            { text = _("Missal edition"), sub_item_table_func = function() return missals(plugin) end },
            { text = _("Language"), sub_item_table_func = function() return languages(plugin) end },
            { text = _("Announce the day when opening a Bible"),
              checked_func = function() return plugin.settings:get("announce") end,
              callback = function() plugin.settings:set("announce", not plugin.settings:get("announce")) end },
            { text = _("Rosary of the day"), sub_item_table_func = function() return rosary(plugin) end },
            { text = _("Show the texts of the readings"),
              help_text = _("Where the texts are installed for the language, each reading can be tapped to show or hide its text."),
              checked_func = function() return plugin.settings:get("texts") end,
              callback = function() plugin.settings:set("texts", not plugin.settings:get("texts")) end },
            { text = _("Show pictures of the saints"),
              help_text = _("Where the pictures are installed, the day's saint or feast is shown with a picture, and the other celebrations can be tapped to show theirs."),
              checked_func = function() return plugin.settings:get("pictures") end,
              callback = function() plugin.settings:set("pictures", not plugin.settings:get("pictures")) end },
            { text = _("About"), callback = function() about(plugin) end },
        },
    }
end

return Menu
