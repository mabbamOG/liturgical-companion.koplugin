--[[--
Liturgical Companion: offline liturgical references for the day, in KOReader.

The entries come from the engine in litcomp/ (pure Lua, no KOReader code) over
the curated data in source/ and the translation tables in i18n/; this file and
koreader/ are the KOReader side: settings, menus, the panel. See
docs/ARCHITECTURE.md.

@module koplugin.liturgicalcompanion
--]]--

local Dispatcher = require("dispatcher")
local Notification = require("ui/widget/notification")
local UIManager = require("ui/uimanager")
local WidgetContainer = require("ui/widget/container/widgetcontainer")
local logger = require("logger")
local T = require("ffi/util").template
local _ = require("gettext")

local LiturgicalCompanion = WidgetContainer:extend{
    name = "liturgicalcompanion",
    is_doc_only = true,
}

-- Sorting folds for calendar names ("Österreich" with O, "Perú" with Peru).
local FOLDS = { ["Ö"] = "O", ["ö"] = "o", ["É"] = "E", ["é"] = "e", ["á"] = "a", ["í"] = "i", ["ó"] = "o", ["ú"] = "u", ["ñ"] = "n", ["ü"] = "u" }

function LiturgicalCompanion:init()
    dofile(self.path .. "/litcomp/loader.lua").install(self.path, { "koreader" })
    local ok, err = pcall(function()
        self.lc = require("litcomp").open(self.path)
        self.settings = require("koreader.settings").new(G_reader_settings)
        self.panel = require("koreader.panel").new(self)
        self.GLYPH_GLOBE = require("koreader.panel").GLYPH_GLOBE
    end)
    if not ok then
        logger.warn("LiturgicalCompanion: cannot load the engine", err)
        return
    end
    self:onDispatcherRegisterActions()
    self.ui.menu:registerToMainMenu(self)
end

--- The language of KOReader's interface, if the tables have it.
function LiturgicalCompanion:ui_language()
    local code = G_reader_settings:readSetting("language") or "en"
    for _i, pair in ipairs(require("koreader.menu").LANGUAGES) do
        if pair[1] == code or pair[1] == code:gsub("_.*", "") then return pair[1] end
    end
    if code == "zh_CN" then return "zh-Hans" end
    if code == "zh_TW" then return "zh-Hant" end
    return "en"
end

--- A tag's text in KOReader's interface language.
function LiturgicalCompanion:ui_text(tag)
    return self.lc:i18n(self:ui_language()):text(tag)
end

LiturgicalCompanion.text = LiturgicalCompanion.ui_text

--- A calendar's name in its own language ("Italia", "Polska").
function LiturgicalCompanion:calendar_name(key)
    local language = require("koreader.day").language(self.lc, key, "auto")
    return self.lc:i18n(language):text("calendar." .. key)
end

--- Calendar keys: the General Roman Calendar first, then by name.
function LiturgicalCompanion:calendars_by_name()
    local keys = {}
    for _i, c in ipairs(self.lc.registry.calendars) do table.insert(keys, c.key) end
    local function sort_key(key)
        local name = self:calendar_name(key)
        for accented, plain in pairs(FOLDS) do name = name:gsub(accented, plain) end
        return name:lower()
    end
    table.sort(keys, function(a, b)
        if a == "GR" or b == "GR" then return a == "GR" and b ~= "GR" end
        return sort_key(a) < sort_key(b)
    end)
    return keys
end

--- The first and last year a date may be chosen in, for the Missal setting.
function LiturgicalCompanion:year_range()
    local registry = self.lc.registry
    local first = tonumber(registry.gregorian_start:sub(1, 4))
    local missal = self.settings:get("missal")
    for _i, m in ipairs(registry.missals) do
        if m.key == missal then first = m.first_year end
    end
    return first, registry.last_year
end

function LiturgicalCompanion:show(date)
    self.panel:show(self.settings:get("calendar"), date)
end

function LiturgicalCompanion:addToMainMenu(menu_items)
    menu_items.liturgical_companion = require("koreader.menu").items(self)
end

function LiturgicalCompanion:onReaderReady()
    if not self.lc or not self.settings:get("announce") then return end
    local document = self.ui and self.ui.document
    if not document then return end
    local ok, props = pcall(function() return document:getProps() end)
    local title = ok and type(props) == "table" and props.title or nil
    local books = {}
    for _i, pair in ipairs(require("koreader.menu").LANGUAGES) do
        for tag, text in pairs(self.lc:i18n(pair[1]).table) do
            if tag:sub(1, 5) == "book." then table.insert(books, text) end
        end
    end
    if not require("koreader.scripture").looks_like(document.file, title, books) then return end
    local view = require("koreader.day").view(self.lc, self.settings:get("calendar"), os.date("%Y-%m-%d"),
        self.settings:get("missal"), self.settings:get("language"))
    if not view then return end
    local name = self.lc:i18n(view.language):text(view.entry.celebrations[1].title)
    -- onReaderReady runs before the reader is shown: wait so the notification
    -- lands on top. Notification has no tap callback: override its handler.
    UIManager:scheduleIn(1, function()
        local toast = Notification:new{
            text = T(_("Liturgical companion: %1 (tap to open)"), name),
            timeout = 6, toast = false, modal = true,
        }
        toast.onTapClose = function(instance)
            UIManager:close(instance)
            self:show(os.date("%Y-%m-%d"))
            return true
        end
        UIManager:show(toast)
    end)
end

function LiturgicalCompanion:onDispatcherRegisterActions()
    Dispatcher:registerAction("liturgical_companion_today", {
        category = "none", event = "ShowLiturgicalCompanionToday",
        title = _("Liturgical companion: today"), reader = true,
    })
    Dispatcher:registerAction("liturgical_companion_pick_date", {
        category = "none", event = "PickLiturgicalCompanionDate",
        title = _("Liturgical companion: choose a date"), reader = true,
    })
end

function LiturgicalCompanion:onShowLiturgicalCompanionToday()
    self:show(os.date("%Y-%m-%d"))
    return true
end

function LiturgicalCompanion:onPickLiturgicalCompanionDate()
    self.panel:choose_date(os.date("%Y-%m-%d"))
    return true
end

return LiturgicalCompanion
