--[[
The day panel (a TextViewer with a navigation row), the country list and the
date picker. Builds on koreader/day.lua for the content.
]]

local InfoMessage = require("ui/widget/infomessage")
local TextViewer = require("ui/widget/textviewer")
local UIManager = require("ui/uimanager")
local _ = require("gettext")

local Date = require("litcomp.core.date")
local Day = require("koreader.day")

local Panel = {}
Panel.__index = Panel

-- Nerd Font globe (KOReader's bundled symbols font): the country list.
Panel.GLYPH_GLOBE = "\239\130\172"

--- plugin: the plugin instance (engine, settings, calendar names).
function Panel.new(plugin)
    return setmetatable({ plugin = plugin }, Panel)
end

local function shift(date, days)
    return Date.iso(Date.parse(date) + days)
end

--- Shows a calendar's day (the saved calendar is not changed). state: the
--- sections shown open and the page, kept when a section is toggled.
function Panel:show(calendar, date, state)
    local plugin = self.plugin
    local settings = plugin.settings
    state = state or { open = {} }
    local view, message = Day.view(plugin.lc, calendar, date, settings:get("missal"), settings:get("language"),
        { texts = settings:get("texts"), open = state.open, litany = settings:get("litany"),
          rosary = settings:get("rosary") ~= "off" and settings:get("rosary") or nil,
          pictures = settings:get("pictures") })
    if not view then
        UIManager:show(InfoMessage:new{ text = plugin:text(message) })
        return
    end
    local html = view.html
    if view.notice then
        html = html:gsub("<body>", "<body><p><i>" .. view.notice:gsub("%%", "%%%%") .. "</i></p>", 1)
    end
    local viewer
    local function go(target_calendar, target_date)
        UIManager:close(viewer)
        self:show(target_calendar, target_date)
    end
    viewer = TextViewer:new{
        title = _("Liturgical companion"),
        text = html,
        text_format = "html",
        -- Not a file to open: TextViewer takes this file's folder as the
        -- HTML's resource directory, where the pictures are.
        file = plugin.path and (plugin.path .. "/" .. require("litcomp.pictures").DIR .. "/day.html"),
        buttons_table = { {
            -- The country list and the date picker open over the panel:
            -- closing them returns to it, choosing replaces it.
            { text = Panel.GLYPH_GLOBE, callback = function() self:choose_calendar(view.date, view.calendar, viewer) end },
            { text = "«", callback = function() go(view.calendar, shift(view.date, -1)) end },
            { text = _("Day"), callback = function() self:choose_date(view.date, viewer, view.calendar) end },
            { text = "»", callback = function() go(view.calendar, shift(view.date, 1)) end },
            { text = _("Close"), callback = function() UIManager:close(viewer) end },
        } },
    }
    -- A tap on a section's line ("toggle:<key>") opens or closes its text,
    -- on the same page.
    local box = viewer.scroll_widget and viewer.scroll_widget.htmlbox_widget
    if box then
        box.html_link_tapped_callback = function(link)
            local key = link.uri and link.uri:match("^toggle:(.+)$")
            if not key then return end
            local open = {}
            for k, v in pairs(state.open) do open[k] = v end
            open[key] = not open[key] or nil
            UIManager:close(viewer)
            self:show(calendar, date, { open = open, page = box.page_number })
        end
    end
    self.viewer = viewer
    UIManager:show(viewer)
    if box and state.page and state.page > 1 then
        box:setPageNumber(math.min(state.page, box.page_count or state.page))
        viewer.scroll_widget:_updateScrollBar()
        UIManager:setDirty(viewer, "ui")
    end
end

function Panel:choose_calendar(date, current, viewer)
    local Menu = require("ui/widget/menu")
    local Screen = require("device").screen
    local plugin = self.plugin
    local menu
    local items, current_index = {}, 1
    for index, key in ipairs(plugin:calendars_by_name()) do
        local is_current = key == current
        if is_current then current_index = index end
        table.insert(items, {
            text = plugin:calendar_name(key),
            bold = is_current,
            mandatory = is_current and "✓" or nil,
            callback = function()
                UIManager:close(menu)
                if viewer then UIManager:close(viewer) end
                self:show(key, date)
            end,
        })
    end
    menu = Menu:new{
        title = _("Country"),
        item_table = items,
        width = Screen:getWidth() - Screen:scaleBySize(20),
        height = Screen:getHeight() - Screen:scaleBySize(20),
        items_per_page = 14,
    }
    -- Open on the page that holds the calendar being viewed.
    menu:switchItemTable(nil, items, current_index)
    self.menu = menu
    UIManager:show(menu)
end

function Panel:choose_date(date, viewer, calendar)
    local DateTimeWidget = require("ui/widget/datetimewidget")
    local plugin = self.plugin
    local first, last = plugin:year_range()
    local y, m, d = date:match("^(%d%d%d%d)%-(%d%d)%-(%d%d)$")
    UIManager:show(DateTimeWidget:new{
        -- KOReader's picker offers 2021-2525 unless told otherwise.
        year_min = first, year_max = last,
        year = tonumber(y), month = tonumber(m), day = tonumber(d),
        title_text = _("Choose a date"),
        info_text = _("Pick any day to see its liturgical references."),
        ok_text = _("Show day"),
        cancel_text = _("Cancel"),
        callback = function(time)
            -- A Cancel leaves the panel; a date replaces it.
            if viewer then UIManager:close(viewer) end
            self:show(calendar or plugin.settings:get("calendar"), string.format("%04d-%02d-%02d", time.year, time.month, time.day))
        end,
    })
end

return Panel
