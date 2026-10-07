--[[
What the panel shows for a calendar and date: the entry rendered in the
display language, after the plugin's choices for requests the engine rejects.

The engine never substitutes a calendar, a Missal or a date; the plugin does,
and says so in a notice:
  * before 15 October 1582: the first Gregorian day;
  * a pre-1970 Missal with a national calendar: the General Roman Calendar
    (the only calendar those editions define);
  * a year the chosen Missal does not cover: the same day in its first year,
    or in the last year the engine computes.

No KOReader module is used here (tools/lua/tests/day_test.lua runs it).
]]

local Day = {}

local function shifted_year(date, year)
    return string.format("%04d%s", year, date:sub(5))
end

--- language: an explicit code, or "auto" for the calendar's own language.
function Day.language(lc, calendar_key, language)
    if language and language ~= "auto" then return language end
    for _i, c in ipairs(lc.registry.calendars) do
        if c.key == calendar_key then return c.language end
    end
    return "en"
end

--- { html, entry, date, calendar, notice } or nil and a message tag.
--- options: litcomp's render options ({ texts, open }).
function Day.view(lc, calendar_key, date, missal, language, options)
    local request = { date = date, calendar = calendar_key, missal = missal or "auto" }
    local notices = {}
    local entry, rejection
    for _attempt = 1, 3 do
        entry, rejection = lc:entry(request)
        if entry then break end
        local code = rejection.code
        if code == "before_gregorian" then
            request.date = lc.registry.gregorian_start
            table.insert(notices, "ui.notice_gregorian")
        elseif code == "calendar_not_in_missal" then
            request.calendar = "GR"
            table.insert(notices, "ui.notice_general_calendar")
        elseif code == "missal_not_in_force" then
            request.date = shifted_year(request.date, rejection.params.year)
            table.insert(notices, "ui.notice_year")
        elseif code == "after_last_year" then
            request.date = shifted_year(request.date, lc.registry.last_year)
            table.insert(notices, "ui.notice_year")
        else
            break
        end
    end
    if not entry then return nil, rejection and rejection.tag or "rejection.bad_request" end
    -- The requested calendar's language, even when another calendar is shown.
    local lang = Day.language(lc, calendar_key, language)
    local t = lc:i18n(lang)
    local html = lc:render(entry, lang, options)
    local notice = {}
    for _i, tag in ipairs(notices) do table.insert(notice, t:text(tag)) end
    return {
        html = html, entry = entry, date = request.date, calendar = request.calendar,
        language = lang, notice = (#notice > 0) and table.concat(notice, " ") or nil,
    }
end

return Day
