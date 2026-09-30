--[[--
Liturgical Companion — a minimal offline reference panel for KOReader.

When you are reading (ideally a Bible), this plugin shows, for any day, the
liturgical day with its full name, the celebration(s) and commemorated
saints/martyrs, the readings of each Mass formulary, the secondary (Office)
reading reference, and the Gospel commentary (Catena Aurea) reference.

Every day is computed on the device (lc_engine.lua) from the liturgical rules
and small tables in ``<plugin>/engine/``; ``<plugin>/data/lc-index.json`` holds
the interface labels. It never uses the network and contains no liturgical
prose, only references.

@module koplugin.liturgicalcompanion
--]]--

local Dispatcher = require("dispatcher")
local InfoMessage = require("ui/widget/infomessage")
local Notification = require("ui/widget/notification")
local TextViewer = require("ui/widget/textviewer")
local UIManager = require("ui/uimanager")
local WidgetContainer = require("ui/widget/container/widgetcontainer")
local logger = require("logger")
local util = require("ffi/util")
local JSON = require("json")
local _ = require("gettext")
local T = util.template

local INDEX_FILE = "lc-index.json"
-- Years the engine covers: from the first Gregorian year (the 1570 Missal) to
-- 9999; a fixed Missal edition starts with its own year.
local YEAR_MIN, YEAR_MAX = 1583, 9999

-- KOReader's JSON decoder represents JSON null with a function sentinel.
local JSON_NULL = (JSON.util and JSON.util.null) or nil

-- Languages with a complete reference-key locale in the EPUB pipeline (PLAN 4.2/22).
local SUPPORTED_LANGUAGES = {
    { "en", "English" },
    { "la", "Latina" },
    { "it", "Italiano" },
    { "de", "Deutsch" },
    { "fr", "Français" },
    { "es", "Español" },
    { "pt", "Português" },
    { "pl", "Polski" },
    { "ru", "Русский" },
    { "zh-Hans", "简体中文" },
    { "zh-Hant", "繁體中文" },
}

local SETTINGS_KEY = "liturgical_companion"

-- Nerd Font glyph (bundled fallback fonts/nerdfonts/symbols.ttf): a globe
-- marks the universal Roman calendar entry.
local GLYPH_GLOBE = "\239\130\172" -- nf-fa globe

-- Coarse file-name hints used to notice a Bible-like document.
local SCRIPTURE_HINTS = {
    "bible", "bibbia", "biblia", "bíblia", "vulgate", "vulgata", "douay", "rheims",
    "martini", "testament", "gospel", "evangel", "psalm", "psalter", "scripture",
    "scrittura", "sagrada escritura", "sainte bible", "heilige schrift", "pismo",
    "библия", "священное писание", "圣经", "聖經",
}

-- Prefixes stripped from a document title before matching a book name.
local TITLE_PREFIXES = {
    "the ", "holy ", "saint ", "st. ", "st ", "gospel of ", "the gospel of ",
    "book of ", "the book of ", "bible ", "the bible ", "la ", "il ", "le ",
    "les ", "das ", "der ", "die ", "el ", "los ", "las ", "o ", "a ",
    "livro de ", "pismo ", "sacred ", "sagrada ",
}

local function isNull(value)
    return value == nil or (JSON_NULL ~= nil and value == JSON_NULL)
end

local function asString(value)
    if type(value) == "string" then return value end
    if type(value) == "number" then return tostring(value) end
    return nil
end

local LiturgicalCompanion = WidgetContainer:extend{
    name = "liturgicalcompanion",
    is_doc_only = true,
}

-- ---------------------------------------------------------------------------
-- Settings
-- ---------------------------------------------------------------------------
function LiturgicalCompanion:getSettings()
    return G_reader_settings:readSetting(SETTINGS_KEY) or {}
end

function LiturgicalCompanion:getSetting(key, default)
    local value = self:getSettings()[key]
    if isNull(value) then return default end
    return value
end

function LiturgicalCompanion:setSetting(key, value)
    local settings = self:getSettings()
    settings[key] = value
    G_reader_settings:saveSetting(SETTINGS_KEY, settings)
end

local function isSupportedLanguage(code)
    for _i, entry in ipairs(SUPPORTED_LANGUAGES) do
        if entry[1] == code then return true end
    end
    return false
end

function LiturgicalCompanion:getLanguage()
    local configured = self:getSetting("language", nil)
    if configured and isSupportedLanguage(configured) then return configured end
    -- No explicit choice: follow the current country's native language, then the
    -- KOReader interface language, then English.
    local index = self:loadIndex()
    local native = index and index.profile_languages and index.profile_languages[self:getProfile()]
    if native and isSupportedLanguage(native) then return native end
    local ui_language = G_reader_settings:readSetting("language")
    if ui_language and isSupportedLanguage(ui_language) then return ui_language end
    return "en"
end

-- ---------------------------------------------------------------------------
-- Bundle loading
-- ---------------------------------------------------------------------------
function LiturgicalCompanion:readFile(path)
    local file = io.open(path, "rb")
    if not file then return nil end
    local content = file:read("*a")
    file:close()
    return content
end

function LiturgicalCompanion:loadIndex()
    if self._index ~= nil then return self._index end
    local path = string.format("%s/data/%s", self.path, INDEX_FILE)
    local payload = self:readFile(path)
    if not payload then
        self._index = false
        return false
    end
    local ok, decoded = pcall(JSON.decode, payload)
    if not ok or type(decoded) ~= "table" or type(decoded.profile_labels) ~= "table" then
        logger.warn("LiturgicalCompanion: cannot decode index", path)
        self._index = false
        return false
    end
    self._index = decoded
    return decoded
end

-- Days are computed on the device from rules and small tables (lc_engine.lua,
-- engine/): no per-day data is stored.
function LiturgicalCompanion:getEngine()
    if self._engine == nil then
        local ok, engine = pcall(function()
            local Engine = dofile(self.path .. "/lc_engine.lua")
            return Engine.new(self.path .. "/engine")
        end)
        if not ok then logger.warn("LiturgicalCompanion: cannot load the engine", engine) end
        self._engine = ok and engine or false
    end
    return self._engine
end

-- Missal edition: "auto" (the edition in force on the date) or an edition key.
function LiturgicalCompanion:getEdition()
    return self:getSetting("edition", "auto")
end

function LiturgicalCompanion:editionInfo(key)
    local engine = self:getEngine()
    return engine and engine.edition_info(key or self:getEdition()) or nil
end

--- First and last selectable year under the current edition setting.
function LiturgicalCompanion:yearRange()
    local info = self:getEdition() ~= "auto" and self:editionInfo() or nil
    return (info and info.min_year) or YEAR_MIN, YEAR_MAX
end

--- Localized edition name ("Roman Missal of 1962 (Traditional Latin Mass)").
function LiturgicalCompanion:editionName(key, lang)
    local index = self:loadIndex() or {}
    local locales = index.locales or {}
    local names = ((locales[lang] or {}).missals) or ((locales.en or {}).missals) or {}
    if key == "1970" then return names["1970"] or "Roman Missal of Paul VI (1970)" end
    local name = string.format("%s %s", names.prefix or "Roman Missal of", key)
    if names[key] then name = string.format("%s (%s)", name, names[key]) end
    return name
end

function LiturgicalCompanion:getProfiles()
    local index = self:loadIndex()
    if not index then return {} end
    local profiles = {}
    local first, last = self:yearRange()
    for profile in pairs(index.profile_labels or {}) do
        profiles[profile] = { years = { first, last } }
    end
    return profiles
end

function LiturgicalCompanion:getCountryLabel(profile)
    local index = self:loadIndex()
    local labels = index and index.profile_labels
    return (labels and labels[profile]) or profile
end

function LiturgicalCompanion:getProfile()
    local configured = self:getSetting("profile", nil)
    if configured and configured ~= "" then return configured end
    local profiles = self:getProfiles()
    if profiles["GR"] then return "GR" end
    local names = {}
    for name in pairs(profiles) do table.insert(names, name) end
    table.sort(names)
    return names[1] or "GR"
end

-- Accented capitals and letters folded for alphabetical order (Österreich
-- sorts with O, Perú with Peru).
local SORT_FOLDS = {
    ["Ö"] = "O", ["ö"] = "o", ["É"] = "E", ["é"] = "e", ["á"] = "a", ["í"] = "i",
    ["ó"] = "o", ["ú"] = "u", ["ñ"] = "n", ["ü"] = "u",
}

local function sortKey(label)
    local key = label
    for accented, plain in pairs(SORT_FOLDS) do key = key:gsub(accented, plain) end
    return key:lower()
end

-- Profiles in display order: the General Roman Calendar first, then countries
-- alphabetically by their own name.
function LiturgicalCompanion:sortedProfiles()
    local names = {}
    for name in pairs(self:getProfiles()) do table.insert(names, name) end
    table.sort(names, function(a, b)
        if a == "GR" or b == "GR" then return a == "GR" and b ~= "GR" end
        return sortKey(self:getCountryLabel(a)) < sortKey(self:getCountryLabel(b))
    end)
    return names
end

function LiturgicalCompanion:getYears(_profile)
    local first, last = self:yearRange()
    return { first, last }
end

function LiturgicalCompanion:getDay(profile, date)
    local year = tonumber((date or ""):sub(1, 4))
    local first, last = self:yearRange()
    if not year or year < first or year > last then return nil end
    local engine = self:getEngine()
    if not engine then return nil end
    self._day_cache = self._day_cache or {}
    local edition = self:getEdition()
    local key = edition .. "/" .. profile .. "/" .. date
    if self._day_cache[key] == nil then
        local ok, day = pcall(engine.resolve, engine, profile, date, edition)
        if not ok then logger.warn("LiturgicalCompanion: cannot compute", key, day) end
        self._day_cache[key] = (ok and day) or false
    end
    return self._day_cache[key] or nil
end

-- ---------------------------------------------------------------------------
-- Localization and reference formatting
-- ---------------------------------------------------------------------------
local function localized(locales, lang, section, key, default)
    if isNull(key) or (type(key) ~= "string" and type(key) ~= "number") then
        key = nil
    end
    if key ~= nil then
        for _i, code in ipairs({ lang, "en" }) do
            local loc = locales[code]
            if loc then
                local table_section = loc[section]
                local value = type(table_section) == "table" and table_section[key] or nil
                if not isNull(value) then
                    return tostring(value)
                end
            end
        end
    end
    if type(default) == "string" then return default end
    if key ~= nil then return (tostring(key):gsub("_", " ")) end
    return "?"
end

local function localizedName(celebration, lang)
    local names = celebration and celebration.names
    if type(names) ~= "table" then return nil, nil end
    for _i, code in ipairs({ lang, "la", "en" }) do
        if type(names[code]) == "string" and names[code] ~= "" then
            return names[code], code
        end
    end
    return nil, nil
end

local function joinColors(colors, locales, lang)
    local out = {}
    for _i, color in ipairs(colors or {}) do
        local name = localized(locales, lang, "colors", color, color)
        local meaning = localized(locales, lang, "color_meanings", color, "")
        if meaning ~= "" then name = string.format("%s (%s)", name, meaning) end
        table.insert(out, name)
    end
    return table.concat(out, ", ")
end

local function locator(item)
    local from = asString(item.from) or ""
    local to = asString(item.to) or ""
    if from == to then return from end
    local start_chapter, start_verse = from:match("^(%d+):(.+)$")
    local end_chapter, end_verse = to:match("^(%d+):(.+)$")
    if start_chapter and end_chapter and start_chapter == end_chapter then
        return string.format("%s:%s–%s", start_chapter, start_verse, end_verse)
    end
    return from .. "–" .. to
end

local function formatReading(reading, books)
    books = books or {}
    local forms = {}
    for _i, form in ipairs(reading.forms or {}) do
        local parts = {}
        local previous_book = nil
        for _j, item in ipairs(form.ranges or {}) do
            local code = item.book
            local book = books[code]
            if type(book) ~= "string" then book = asString(code) or "?" end
            if book == previous_book and #parts > 0 then
                table.insert(parts, locator(item))
            else
                table.insert(parts, string.format("%s %s", book, locator(item)))
            end
            previous_book = book
        end
        table.insert(forms, table.concat(parts, "; "))
    end
    return table.concat(forms, " / ")
end

local function readingSignature(readings)
    local sig = {}
    for _i, reading in ipairs(readings or {}) do
        local ranges = {}
        for _j, form in ipairs(reading.forms or {}) do
            for _k, item in ipairs(form.ranges or {}) do
                table.insert(ranges, string.format("%s:%s-%s", tostring(item.book), tostring(item.from), tostring(item.to)))
            end
        end
        table.sort(ranges)
        table.insert(sig, string.format("%s|%s", tostring(reading.slot), table.concat(ranges, ",")))
    end
    table.sort(sig)
    return table.concat(sig, ";")
end

local function weekdayName(locales, lang, date)
    local loc = locales[lang] or locales.en or {}
    local weekdays = loc.weekdays
    local y, m, d = date:match("^(%d%d%d%d)%-(%d%d)%-(%d%d)$")
    if not y then return nil end
    local t = os.time{ year = tonumber(y), month = tonumber(m), day = tonumber(d), hour = 12 }
    local wday = tonumber(os.date("%w", t)) -- 0 = Sunday
    local iso = ((wday + 6) % 7) + 1 -- 1 = Monday ... 7 = Sunday
    if type(weekdays) == "table" and weekdays[iso] then return weekdays[iso] end
    return nil
end

local function formatDate(locales, lang, date)
    local loc = locales[lang] or locales.en or {}
    local cal = loc.calendar or {}
    local y, m, d = date:match("^(%d%d%d%d)%-(%d%d)%-(%d%d)$")
    if not y then return date end
    local month = (cal.months and cal.months[tonumber(m)]) or m
    local pattern = cal.date_pattern or "{d} {m} {y}"
    local out = pattern:gsub("{y}", y)
    out = out:gsub("{m}", month)
    out = out:gsub("{d}", tostring(tonumber(d)))
    return out
end

local function shiftDate(date, delta)
    local y, m, d = date:match("^(%d%d%d%d)%-(%d%d)%-(%d%d)$")
    if not y then return date end
    local t = os.time{ year = tonumber(y), month = tonumber(m), day = tonumber(d), hour = 12 }
    return os.date("%Y-%m-%d", t + delta * 86400)
end

-- ---------------------------------------------------------------------------
-- Rendering
-- ---------------------------------------------------------------------------
local function esc(value)
    local text = tostring(value)
    text = text:gsub("&", "&amp;")
    text = text:gsub("<", "&lt;")
    text = text:gsub(">", "&gt;")
    return text
end

function LiturgicalCompanion:renderDay(bundle, profile, date, lang)
    local profile_data = (bundle.profiles or {})[profile]
    local day = profile_data and (profile_data.days or {})[date]
    if not day then
        return string.format(
            "<html><body><p>%s</p><p>%s</p></body></html>",
            esc(date),
            esc("No data for this day in this country.")
        )
    end
    local locales = bundle.locales or {}
    local books = ((locales[lang] or {}).books) or ((locales.en or {}).books) or {}
    local mass_word = localized(locales, lang, "text", "mass", "Mass")
    local yes_label = localized(locales, lang, "mass_labels", "yes", "yes")
    local parts = { "<html><body>" }
    -- Lines of one section form one block with no space between them, so only
    -- headings and section boundaries get vertical space. (Not <br/>: MuPDF
    -- renders it with an extra empty line.)
    local lines = {}
    local function flush()
        if #lines > 0 then
            table.insert(parts, '<div style="margin: 0.6em 0">')
            for _i, html in ipairs(lines) do
                table.insert(parts, "<div>" .. html .. "</div>")
            end
            table.insert(parts, "</div>")
            lines = {}
        end
    end
    local function line(html) table.insert(lines, html) end
    local function block(html)
        flush()
        table.insert(parts, html)
    end

    local celebrations = day.celebrations or {}
    local by_id = {}
    local primary = nil
    for _i, celebration in ipairs(celebrations) do
        by_id[celebration.id] = celebration
        if celebration.role == "primary" and primary == nil then primary = celebration end
    end

    -- Catena chains are keyed to the Mass whose Gospel they comment on.
    local catena = {}
    for _i, entry in ipairs(day.commentaries or {}) do
        if type(entry.mass_id) == "string" then
            catena[entry.mass_id] = catena[entry.mass_id] or {}
            table.insert(catena[entry.mass_id], entry)
        end
    end

    local weekday = weekdayName(locales, lang, date)
    local display_date = formatDate(locales, lang, date)
    block(string.format("<h2>%s</h2>", esc(weekday and string.format("%s · %s", display_date, weekday) or display_date)))
    if primary then
        line(string.format("<b>%s:</b> %s", esc(localized(locales, lang, "panel", "day", "Day")), esc(localizedName(primary, lang) or primary.id or "?")))
        local meta = { localized(locales, lang, "ranks", primary.rank, primary.rank) }
        local colors = joinColors(primary.colors, locales, lang)
        if colors ~= "" then table.insert(meta, colors) end
        local season = day.season and localized(locales, lang, "seasons", day.season, day.season)
        if season and season ~= "" then
            local week = tonumber(day.season_week)
            if week then season = string.format("%s %d", season, week) end
            table.insert(meta, season)
        end
        local year = (day.cycles or {}).sunday
        if type(year) == "string" and year ~= "" then
            table.insert(meta, string.format("%s %s", localized(locales, lang, "calendar", "year", "Year"), year))
        end
        line(string.format("<b>%s:</b> %s", esc(localized(locales, lang, "panel", "type", "Type")), esc(table.concat(meta, " · "))))
        -- Only the older editions name their Missal (the current one is the default).
        if day.missal and day.missal ~= "1970" then
            local missal = self:editionName(day.missal, lang)
            if profile ~= "GR" then
                local missals = ((locales[lang] or {}).missals) or ((locales.en or {}).missals) or {}
                missal = missal .. " · " .. (missals.general or "General Roman Calendar")
            end
            line(string.format("<b>%s:</b> %s", esc(localized(locales, lang, "panel", "missal", "Missal")), esc(missal)))
        end
    end

    local secondary = {}
    for _i, celebration in ipairs(celebrations) do
        if celebration.role ~= "primary" then table.insert(secondary, celebration) end
    end
    if #secondary > 0 then
        block(string.format("<h3>%s</h3><ul>", esc(localized(locales, lang, "panel", "saints", "Saints and martyrs"))))
        for _i, celebration in ipairs(secondary) do
            local name = localizedName(celebration, lang) or celebration.id or "?"
            local label = localized(locales, lang, "ranks", celebration.rank, celebration.rank):lower()
            if celebration.role and celebration.role ~= "optional" then
                label = label .. string.format(" (%s)", localized(locales, lang, "roles", celebration.role, celebration.role))
            end
            table.insert(parts, string.format("<li>%s — %s</li>", esc(name), esc(label)))
        end
        table.insert(parts, "</ul>")
    end

    local masses = day.masses or {}
    local seen_sigs = {}
    for _i, mass in ipairs(masses) do
        local kind = mass.kind
        local name_key = kind
        if kind == "day" and primary and primary.rank ~= "weekday" and primary.rank ~= "privileged_weekday" then
            name_key = "day_of"
        end
        local kind_label = localized(locales, lang, "mass_kinds", kind, kind)
        local heading = localized(locales, lang, "mass_names", name_key, string.format("%s %s", mass_word, kind_label))
        local celebration = by_id[mass.celebration_id]
        if celebration and celebration ~= primary then
            heading = heading .. " — " .. (localizedName(celebration, lang) or celebration.id or "?")
        end
        block(string.format("<h3>%s</h3>", esc(heading)))

        local sig = (mass.readings and #mass.readings > 0) and readingSignature(mass.readings) or nil
        if sig and seen_sigs[sig] then
            -- An alternative formulary that reuses readings already listed.
            line(string.format("%s", esc(localized(locales, lang, "panel", "same_readings", "same readings as above"))))
        else
            if sig then seen_sigs[sig] = true end
            local flags = mass.flags or {}
            local marks = {}
            if flags.gloria then
                table.insert(marks, string.format("<b>%s:</b> %s", esc(localized(locales, lang, "mass_labels", "gloria", "Gloria")), esc(yes_label)))
            end
            if flags.creed then
                table.insert(marks, string.format("<b>%s:</b> %s", esc(localized(locales, lang, "mass_labels", "creed", "Creed")), esc(yes_label)))
            end
            for _j, sequence in ipairs(flags.sequences or {}) do
                table.insert(marks, string.format("<b>%s:</b> %s", esc(localized(locales, lang, "mass_labels", "sequence", "Sequence")), esc(localized(locales, lang, "sequences", sequence, sequence))))
            end
            if #marks > 0 then line(table.concat(marks, " · ")) end

            local readings = mass.readings or {}
            if #readings == 0 then
                line(string.format("<b>%s:</b> —", esc(localized(locales, lang, "panel", "readings", "Readings"))))
            end
            for _j, reading in ipairs(readings) do
                local short = localized(locales, lang, "reading_slots_short", reading.slot, "")
                local label = short ~= "" and short or localized(locales, lang, "reading_slots", reading.slot, reading.slot)
                line(string.format("<b>%s:</b> %s", esc(label), esc(formatReading(reading, books))))
                if reading.slot == "gospel" and type(mass.id) == "string" then
                    local chains = catena[mass.id]
                    if chains and #chains > 0 then
                        local authors = {}
                        for _k, chain in ipairs(chains) do
                            for _l, author in ipairs(chain.attributions or {}) do
                                local localized_author = localized(locales, lang, "catena_authors", author, author)
                                local found = false
                                for _m, existing in ipairs(authors) do
                                    if existing == localized_author then found = true end
                                end
                                if not found then table.insert(authors, localized_author) end
                            end
                        end
                        local value
                        if #authors > 0 then
                            value = table.concat(authors, ", ")
                        else
                            local total = 0
                            for _k, chain in ipairs(chains) do
                                total = total + (tonumber(chain.segment_count) or 0)
                            end
                            -- Without attributions only a positive count is worth showing.
                            value = total > 0 and tostring(total) or nil
                        end
                        if value then line(string.format("<b>Catena:</b> %s", esc(value))) end
                    end
                end
            end
        end
    end

    -- The pre-1970 editions carry no Office of Readings references.
    if not day.office then
        block("</body></html>")
        return table.concat(parts)
    end
    local office = day.office
    local author = asString(office.selected_author)
    local title = asString(office.selected_citation_title)
    local locator = asString(office.selected_citation_locator)
    if not (title and title ~= "") then
        local chosen = nil
        for _i, candidate in ipairs(office.candidates or {}) do
            if primary and candidate.celebration_id == primary.id then
                chosen = candidate
                break
            end
        end
        if not chosen then chosen = (office.candidates or {})[1] end
        if chosen then
            author = asString(chosen.author)
            title = asString(chosen.citation_title)
            locator = asString(chosen.citation_locator)
        end
    end
    local localized_author = localized(locales, lang, "office_author_names", author or "", author or "")
    local citation = "N/A"
    if title and title ~= "" then
        local localized_title = localized(locales, lang, "office_citations", title, title)
        citation = (locator and locator ~= "") and string.format("%s %s", localized_title, locator) or localized_title
    end
    block(string.format("<h3>%s</h3>", esc(localized(locales, lang, "text", "office_reading", "Office of Readings: second reading"))))
    line(string.format("<b>%s:</b> %s", esc(localized(locales, lang, "panel", "author", "Author")), esc(localized_author)))
    line(string.format("<b>%s:</b> %s", esc(localized(locales, lang, "panel", "reading", "Reading")), esc(citation)))

    block("</body></html>")
    return table.concat(parts)
end

function LiturgicalCompanion:resolveDay(profile, date)
    if self:getDay(profile, date) then return date, nil end
    local year = tonumber(date:sub(1, 4))
    local nearest = nil
    local first, last = self:yearRange()
    if year and year < first then nearest = first end
    if year and year > last then nearest = last end
    if nearest then
        local alternative = string.format("%04d%s", nearest, date:sub(5))
        if self:getDay(profile, alternative) then
            return alternative, T(_("No data for the requested year; showing %1."), nearest)
        end
    end
    return nil, nil
end

function LiturgicalCompanion:showDay(date)
    self:showDayFor(self:getProfile(), date)
end

-- Render the panel for one country without touching the saved setting.
function LiturgicalCompanion:showDayFor(profile, date)
    date = date or os.date("%Y-%m-%d")
    local index = self:loadIndex()
    if not index then
        UIManager:show(InfoMessage:new{ text = _("No offline liturgical data is installed.") })
        return
    end
    if not self:getProfiles()[profile] then
        local names = {}
        for name in pairs(self:getProfiles()) do table.insert(names, name) end
        table.sort(names)
        profile = names[1]
    end
    if not profile then
        UIManager:show(InfoMessage:new{ text = _("The installed bundle has no countries.") })
        return
    end
    local resolved, notice = self:resolveDay(profile, date)
    if not resolved then
        UIManager:show(InfoMessage:new{
            text = T(_("No data for %1 in %2."), date, self:getCountryLabel(profile)),
        })
        return
    end
    local view = {
        locales = index.locales,
        profile_labels = index.profile_labels,
        profiles = { [profile] = { days = { [resolved] = self:getDay(profile, resolved) } } },
    }
    -- Render in the viewed country's own language, so a temporary switch is
    -- visibly different even when two calendars share the same day.
    local lang = (index.profile_languages and index.profile_languages[profile]) or self:getLanguage()
    local text = self:renderDay(view, profile, resolved, lang)
    if notice then text = notice .. "\n\n" .. text end
    self:showPanel(text, resolved, profile)
end

-- Show the panel with a day-navigation row instead of the default Find button.
function LiturgicalCompanion:showPanel(text, date, profile)
    local viewer
    local buttons_table = {
        {
            {
                text = GLYPH_GLOBE,
                -- Keep the panel open underneath, like the date picker: closing
                -- the list returns to it, choosing a country replaces it.
                callback = function() self:showCountryMenu(date, profile, viewer) end,
            },
            {
                text = "«",
                callback = function()
                    UIManager:close(viewer)
                    self:showDayFor(profile, shiftDate(date, -1))
                end,
            },
            {
                text = _("Day"),
                -- Keep the panel open underneath: Cancel returns to it.
                callback = function() self:pickDateFor(date, viewer) end,
            },
            {
                text = "»",
                callback = function()
                    UIManager:close(viewer)
                    self:showDayFor(profile, shiftDate(date, 1))
                end,
            },
            {
                text = _("Close"),
                callback = function() UIManager:close(viewer) end,
            },
        },
    }
    viewer = TextViewer:new{
        title = _("Liturgical companion"),
        text = text,
        text_format = "html",
        buttons_table = buttons_table,
    }
    UIManager:show(viewer)
end

-- Temporary country switch from inside the panel (does not persist).
function LiturgicalCompanion:showCountryMenu(date, current_profile, viewer)
    if self._country_menu then
        UIManager:close(self._country_menu)
        self._country_menu = nil
    end
    local names = self:sortedProfiles()
    local menu
    local item_table = {}
    local current_index = 1
    for index, name in ipairs(names) do
        local label = self:getCountryLabel(name)
        local current = name == current_profile
        if current then current_index = index end
        table.insert(item_table, {
            text = label,
            -- The country being viewed: bold, with KOReader's check mark on the right.
            bold = current,
            mandatory = current and "✓" or nil,
            callback = function()
                if menu then UIManager:close(menu) end
                self._country_menu = nil
                if viewer then UIManager:close(viewer) end
                self:showDayFor(name, date)
            end,
        })
    end
    local Menu = require('ui/widget/menu')
    local Screen = require('device').screen
    menu = Menu:new{
        title = _('Country'),
        item_table = item_table,
        width = Screen:getWidth() - Screen:scaleBySize(20),
        height = Screen:getHeight() - Screen:scaleBySize(20),
        items_per_page = 14,
    }
    -- Open on the page that holds the country being viewed.
    menu:switchItemTable(nil, item_table, current_index)
    self._country_menu = menu
    UIManager:show(menu)
end

function LiturgicalCompanion:pickDateFor(date, viewer)
    local DateTimeWidget = require("ui/widget/datetimewidget")
    local y, m, d = date:match("^(%d%d%d%d)%-(%d%d)%-(%d%d)$")
    UIManager:show(DateTimeWidget:new{
        -- KOReader's picker offers 2021-2525 unless told otherwise.
        year_min = (self:yearRange()),
        year_max = select(2, self:yearRange()),
        year = tonumber(y),
        month = tonumber(m),
        day = tonumber(d),
        title_text = _("Choose a date"),
        info_text = _("Pick any day to see its liturgical references."),
        ok_text = _("Show day"),
        cancel_text = _("Cancel"),
        callback = function(time)
            -- Only replace the panel when a date was actually chosen; a Cancel
            -- leaves the existing panel on screen.
            if viewer then UIManager:close(viewer) end
            self:showDay(string.format("%04d-%02d-%02d", time.year, time.month, time.day))
        end,
    })
end

function LiturgicalCompanion:pickDate()
    self:pickDateFor(os.date("%Y-%m-%d"))
end

local REPOSITORY_URL = "https://github.com/mabbamOG/liturgical-companion.koplugin"

function LiturgicalCompanion:showAbout()
    local profiles = self:getProfiles()
    local available = {}
    for _i, profile in ipairs(self:sortedProfiles()) do
        table.insert(available, self:getCountryLabel(profile))
    end
    UIManager:show(InfoMessage:new{
        text = T(
            _([[
Liturgical Companion %1

Offline daily references for the day you are reading: the full name of the day, the saints and martyrs, the Mass readings, the secondary (Office) reading, and the Gospel commentary (Catena Aurea) reference, in any supported country and language.

Repository: %2
Calendars: %3
Years: %4–%5

Every day is computed on this device from the liturgical rules and small reference tables. Not an official liturgical book.]]),
            self.version or "0.0.0",
            REPOSITORY_URL,
            (#available > 0) and table.concat(available, "; ") or _("none"),
            (self:yearRange()),
            select(2, self:yearRange())
        ),
    })
end

-- ---------------------------------------------------------------------------
-- Bible detection
-- ---------------------------------------------------------------------------
function LiturgicalCompanion:titleMatchesBook(title)
    local lowered = string.lower(title)
    for _i, prefix in ipairs(TITLE_PREFIXES) do
        while lowered:sub(1, #prefix) == prefix do
            lowered = lowered:sub(#prefix + 1)
        end
    end
    local locales = (self:loadIndex() or {}).locales
    if type(locales) ~= "table" then return false end
    for _i, loc in pairs(locales) do
        local books = loc.books
        if type(books) == "table" then
            for _j, book in pairs(books) do
                local needle = string.lower(book)
                if #needle >= 4 and lowered:sub(1, #needle) == needle then
                    return true
                end
            end
        end
    end
    return false
end

function LiturgicalCompanion:looksLikeScripture()
    local document = self.ui and self.ui.document
    if not document then return false end
    local parts = {}
    if document.file then table.insert(parts, string.lower(document.file)) end
    local ok, props = pcall(function() return document:getProps() end)
    local title = (ok and type(props) == "table") and props.title or nil
    if title then table.insert(parts, string.lower(title)) end
    local haystack = table.concat(parts, " ")
    for _i, hint in ipairs(SCRIPTURE_HINTS) do
        if haystack:find(hint, 1, true) then return true end
    end
    if title and self:titleMatchesBook(title) then return true end
    return false
end

function LiturgicalCompanion:onReaderReady()
    if not self:getSetting("announce_on_open", false) then return end
    if not self:looksLikeScripture() then return end
    local profile = self:getProfile()
    local date = os.date("%Y-%m-%d")
    local day = self:getDay(profile, date)
    if not day then return end
    local name
    for _i, celebration in ipairs(day.celebrations or {}) do
        if celebration.role == "primary" then
            name = localizedName(celebration, self:getLanguage())
            break
        end
    end
    if not name then return end
    -- onReaderReady runs before ReaderUI is shown; wait a moment so the
    -- notification lands on top of it. KOReader's Notification has no tap
    -- callback, so override its tap handler to open the day's panel.
    UIManager:scheduleIn(1, function()
        local toast = Notification:new{
            text = T(_("Liturgical companion: %1 (tap to open)"), name),
            timeout = 6,
            toast = false,
            modal = true,
        }
        toast.onTapClose = function(instance)
            UIManager:close(instance)
            self:showDay(os.date("%Y-%m-%d"))
            return true
        end
        UIManager:show(toast)
    end)
end

function LiturgicalCompanion:regionMenuItems()
    local profiles = self:getProfiles()
    local languages = (self:loadIndex() or {}).profile_languages or {}
    local names = self:sortedProfiles()
    local items = {}
    for _i, name in ipairs(names) do
        local years = profiles[name].years or {}
        years = { string.format("%d–%d", years[1] or YEAR_MIN, years[2] or YEAR_MAX) }
        local prefix = (name == "GR") and (GLYPH_GLOBE .. " ") or ""
        table.insert(items, {
            text = prefix .. self:getCountryLabel(name),
            help_text = T(_("Available years: %1"), table.concat(years, ", ")),
            radio = true,
            checked_func = function() return self:getProfile() == name end,
            callback = function()
                self:setSetting("profile", name)
                if languages[name] then self:setSetting("language", languages[name]) end
            end,
            keep_menu_open = true,
        })
    end
    if #items == 0 then
        table.insert(items, { text = _("The installed bundle has no countries."), enabled = false })
    end
    return items
end

-- Edition names in the interface language (the menu), as opposed to
-- editionName(), which follows the calendar's language (the panel).
local EDITION_MENU_NAMES = {
    ["1970"] = _("Roman Missal of Paul VI (1970)"),
    ["1962"] = _("Roman Missal of 1962 (Traditional Latin Mass)"),
    ["1955"] = _("Roman Missal of 1955 (Pius XII)"),
    ["1954"] = _("Roman Missal of 1954 (Pius X's rubrics)"),
    ["1939"] = _("Roman Missal of 1939 (Pius X's rubrics)"),
    ["1906"] = _("Roman Missal of 1906"),
    ["1888"] = _("Roman Missal of 1888"),
    ["1570"] = _("Roman Missal of 1570 (Pius V)"),
}

function LiturgicalCompanion:editionMenuItems()
    local engine = self:getEngine()
    local function choose(key)
        return function()
            self:setSetting("edition", key)
            self._day_cache = {}
        end
    end
    local items = {
        {
            text = _("Automatic (by date)"),
            help_text = _("Use the Missal in force on the day shown: the Roman Missal of Paul VI from Advent 1969, older editions before."),
            radio = true,
            checked_func = function() return self:getEdition() == "auto" end,
            callback = choose("auto"),
            keep_menu_open = true,
            separator = true,
        },
    }
    local editions = engine and engine.EDITIONS or {}
    for i = #editions, 1, -1 do
        local edition = editions[i]
        table.insert(items, {
            text = EDITION_MENU_NAMES[edition.key] or edition.key,
            help_text = T(_("Always use this edition, from %1 onwards. Older editions follow the General Roman Calendar."), edition.min_year),
            radio = true,
            checked_func = function() return self:getEdition() == edition.key end,
            callback = choose(edition.key),
            keep_menu_open = true,
        })
    end
    return items
end

function LiturgicalCompanion:addToMainMenu(menu_items)
    menu_items.liturgical_companion = {
        text = _("Liturgical companion"),
        sorting_hint = "more_tools",
        sub_item_table = {
            {
                text = _("Today's references"),
                keep_menu_open = true,
                callback = function() self:showDay(os.date("%Y-%m-%d")) end,
            },
            {
                text = _("Choose a date…"),
                keep_menu_open = true,
                callback = function() self:pickDate() end,
            },
            {
                text = _("Country"),
                sub_item_table_func = function() return self:regionMenuItems() end,
            },
            {
                text = _("Missal edition"),
                sub_item_table_func = function() return self:editionMenuItems() end,
            },
            {
                text = _("Announce the day when opening a Bible"),
                checked_func = function() return self:getSetting("announce_on_open", false) end,
                callback = function()
                    self:setSetting("announce_on_open", not self:getSetting("announce_on_open", false))
                end,
            },
            {
                text = _("About"),
                callback = function() self:showAbout() end,
            },
        },
    }
end

function LiturgicalCompanion:onDispatcherRegisterActions()
    Dispatcher:registerAction("liturgical_companion_today", {
        category = "none",
        event = "ShowLiturgicalCompanionToday",
        title = _("Liturgical companion: today"),
        reader = true,
    })
    Dispatcher:registerAction("liturgical_companion_pick_date", {
        category = "none",
        event = "PickLiturgicalCompanionDate",
        title = _("Liturgical companion: choose a date"),
        reader = true,
    })
end

function LiturgicalCompanion:onShowLiturgicalCompanionToday()
    self:showDay(os.date("%Y-%m-%d"))
    return true
end

function LiturgicalCompanion:onPickLiturgicalCompanionDate()
    self:pickDate()
    return true
end

function LiturgicalCompanion:init()
    self:onDispatcherRegisterActions()
    self.ui.menu:registerToMainMenu(self)
end

return LiturgicalCompanion
