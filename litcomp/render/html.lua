--[[
An entry as the panel HTML: a heading with the date, the day, the other
celebrations, each Mass (flags, readings, Catena Aurea), the Office of Readings
and, when chosen, the Rosary of the day (its mysteries, and with embedded
texts its prayers and the Litany of Loreto).

With embedded texts (options.texts, litcomp.texts), a reading that has its
text becomes a section: its line is a link ("toggle:<key>") with an arrow,
and the text shows under it only when options.open[key] is set. Each text
ends with its source in a small italic parenthesis.

With pictures (options.pictures, litcomp.pictures), the day's celebration
shows its picture under its name, and each other celebration with one gets a
section for it. Image sources are file names relative to the pictures folder.

All words come from the language's translation table (litcomp.i18n); this
module knows only the layout. The HTML is the small subset KOReader's
TextViewer (MuPDF) renders well: headings, bold, lists and plain blocks.
]]


local Html = {}

local function esc(value)
    return (tostring(value):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
end

--- "15:51–57", "14:21–15:1" or "4:17n".
local function locator(range)
    if range.from == range.to then return range.from end
    local c1 = range.from:match("^(%d+):")
    local c2, v2 = range.to:match("^(%d+):(.+)$")
    if c1 == c2 then return range.from .. "–" .. v2 end
    return range.from .. "–" .. range.to
end

function Html.reading(reading, t)
    local forms = {}
    for _i, ranges in ipairs(reading.forms) do
        local parts, previous = {}, nil
        for _j, range in ipairs(ranges) do
            local book = t:text(range.book)
            table.insert(parts, (book == previous) and locator(range) or (book .. " " .. locator(range)))
            previous = book
        end
        table.insert(forms, table.concat(parts, "; "))
    end
    return table.concat(forms, " / ")
end

local function signature(readings)
    local parts = {}
    for _i, r in ipairs(readings) do
        for _j, ranges in ipairs(r.forms) do
            for _k, x in ipairs(ranges) do table.insert(parts, r.slot .. x.book .. x.from .. x.to) end
        end
    end
    table.sort(parts)
    return table.concat(parts, ",")
end

-- The verses of a passage: paragraphs of prose, one line per poetic line,
-- each verse with its number.
local function passage(text)
    local out = { '<div style="margin: 0.3em 0 0.5em 0">' }
    local open = false
    local function paragraph()
        if open then table.insert(out, "</div>") end
        table.insert(out, '<div style="margin: 0.3em 0">')
        open = true
    end
    for i, v in ipairs(text.verses) do
        local body = v.text
        local starts = body:sub(1, 2) == "\194\182" -- "¶"
        if starts then body = body:sub(3) end
        if i == 1 or starts then paragraph() end
        local number = string.format("<sup>%d</sup>", v.verse)
        if body:find("\n", 1, true) then
            local first = true
            for piece in (body .. "\n"):gmatch("(.-)\n") do
                table.insert(out, string.format('<div style="margin-left: 1em">%s%s</div>', first and number or "", esc(piece)))
                first = false
            end
        else
            table.insert(out, number .. esc(body) .. " ")
        end
    end
    if open then table.insert(out, "</div>") end
    table.insert(out, string.format('<div style="font-size: 0.8em"><i>(%s)</i></div></div>', esc(text.attribution)))
    return table.concat(out)
end

function Html.date(entry, t)
    local y, m, d = entry.date:match("^(%d+)%-(%d+)%-(%d+)$")
    return t:format("format.date", { day = tonumber(d), month = t:text("month." .. tonumber(m)), year = y })
end

-- A collapsible section's line: an arrow and the label, as a "toggle:" link.
local function toggle(key, is_open, label_html)
    return string.format('<a href="toggle:%s" style="text-decoration: none; color: black">%s %s</a>',
        key, is_open and "▾" or "▸", label_html)
end

local function source_note(text)
    return string.format('<div style="font-size: 0.8em"><i>(%s)</i></div>', esc(text))
end

-- A picture, centred, with its credit.
local function picture(p)
    return string.format('<div style="text-align: center; margin: 0.4em 0"><img src="%s" style="height: 9em"/>%s</div>',
        esc(p.file), source_note(p.credit))
end

--- options: { texts = litcomp.texts, language = code, open = { [key] = true },
--- rosary = a set of mysteries (litcomp.rosary), prayers = the language's
--- prayers (texts/prayers/), litany = show the Litany of Loreto, pictures =
--- litcomp.pictures }.
function Html.entry(entry, t, options)
    options = options or {}
    local parts = { "<html><body>" }
    local lines = {}
    -- Lines of a section form one block: only sections get vertical space
    -- (MuPDF renders <br/> with an extra empty line).
    local function flush()
        if #lines > 0 then
            table.insert(parts, '<div style="margin: 0.6em 0">')
            for _i, html in ipairs(lines) do table.insert(parts, "<div>" .. html .. "</div>") end
            table.insert(parts, "</div>")
            lines = {}
        end
    end
    local function line(html) table.insert(lines, html) end
    local function block(html) flush(); table.insert(parts, html) end
    local function label(tag, value) line(string.format("<b>%s:</b> %s", esc(t:text(tag)), value)) end

    block(string.format("<h2>%s · %s</h2>", esc(Html.date(entry, t)), esc(t:text(entry.weekday))))

    local primary = entry.celebrations[1]
    label("ui.day", esc(t:text(primary.title)))
    local meta = { t:text(primary.rank) }
    local colors = {}
    for _i, color in ipairs(primary.colors) do table.insert(colors, t:text(color)) end
    if #colors > 0 then table.insert(meta, table.concat(colors, t:text("ui.or"))) end
    if entry.season then
        table.insert(meta, entry.week and (t:text(entry.season) .. " " .. entry.week) or t:text(entry.season))
    end
    if entry.cycles and entry.cycles.sunday then table.insert(meta, t:text("ui.year") .. " " .. entry.cycles.sunday) end
    label("ui.type", esc(table.concat(meta, " · ")))
    if primary.obligation then line(esc(t:text("ui.obligation"))) end
    if entry.missal ~= "missal.1970" then label("ui.missal", esc(t:text(entry.missal))) end
    for _i, v in ipairs(entry.variants or {}) do
        line(esc(t:format("ui.variant", { places = table.concat(v.places, ", "), celebration = t:text(v.celebration.title) })))
    end

    local pictures = options.pictures
    local primary_picture = pictures and pictures:of(primary.id)
    if primary_picture then block(picture(primary_picture)) end

    if #entry.celebrations > 1 then
        block(string.format("<h3>%s</h3><ul>", esc(t:text("ui.celebrations"))))
        for i = 2, #entry.celebrations do
            local c = entry.celebrations[i]
            local what = t:text(c.rank):lower()
            -- "optional memorial" says it already; so does a commemoration.
            if c.role ~= "role.optional" and c.rank:sub(6) ~= c.role:sub(6) then
                what = what .. " (" .. t:text(c.role) .. ")"
            end
            local p = pictures and pictures:of(c.id)
            local item = string.format("%s — %s", esc(t:text(c.title)), esc(what))
            if p then
                local key = "picture" .. i
                local is_open = options.open and options.open[key]
                item = toggle(key, is_open, item) .. (is_open and picture(p) or "")
            end
            table.insert(parts, "<li>" .. item .. "</li>")
        end
        table.insert(parts, "</ul>")
    end

    for _i, rite in ipairs(entry.rites) do block(string.format("<h3>%s</h3>", esc(t:text(rite.title)))) end

    local seen = {}
    for mi, m in ipairs(entry.masses) do
        local heading = t:text(m.kind)
        if m.celebration ~= primary.id and m.title ~= primary.title then heading = heading .. " — " .. t:text(m.title) end
        block(string.format("<h3>%s</h3>", esc(heading)))
        if m.kind == "mass.proper-solemnity" then line("<i>" .. esc(t:text("ui.proper_solemnity")) .. "</i>") end
        local sig = #m.readings > 0 and signature(m.readings) or nil
        if sig and seen[sig] then
            line(esc(t:text("ui.same_readings")))
        else
            if sig then seen[sig] = true end
            local marks = {}
            if m.gloria then table.insert(marks, string.format("<b>%s:</b> %s", esc(t:text("ui.gloria")), esc(t:text("ui.yes")))) end
            if m.creed then table.insert(marks, string.format("<b>%s:</b> %s", esc(t:text("ui.creed")), esc(t:text("ui.yes")))) end
            for _j, sequence in ipairs(m.sequences) do
                table.insert(marks, string.format("<b>%s:</b> %s", esc(t:text("ui.sequence")), esc(t:text(sequence))))
            end
            if #marks > 0 then line(table.concat(marks, " · ")) end
            if #m.readings == 0 then label("ui.readings", "—") end
            if m.common then line("<i>" .. esc(t:text(m.common)) .. "</i>") end
            for j, r in ipairs(m.readings) do
                local text = options.texts and options.texts:reading(r, options.language)
                if text then
                    local key = string.format("m%dr%d", mi, j)
                    local is_open = options.open and options.open[key]
                    line(toggle(key, is_open, string.format("<b>%s:</b> %s", esc(t:text(r.slot)), esc(Html.reading(r, t)))))
                    if is_open then line(passage(text)) end
                else
                    label(r.slot, esc(Html.reading(r, t)))
                end
                if r.slot == "slot.gospel" and m.catena and #m.catena.authors > 0 then
                    local authors = {}
                    for _k, a in ipairs(m.catena.authors) do table.insert(authors, t:text(a)) end
                    label("ui.catena", esc(table.concat(authors, ", ")))
                end
            end
        end
    end

    if entry.office then
        block(string.format("<h3>%s</h3>", esc(t:text("ui.office"))))
        local r = entry.office.reading
        if r then
            label("ui.author", esc(t:text(r.author)))
            local citation = t:text(r.work)
            if r.locator and r.locator ~= "" then citation = citation .. " " .. r.locator end
            label("ui.reading", esc(citation))
        else
            label("ui.reading", "—")
        end
    end

    if options.rosary then
        local set = options.rosary
        local open = options.open or {}
        block(string.format("<h3>%s — %s</h3>", esc(t:text("ui.rosary")), esc(t:text("rosary." .. set.id))))
        for i, m in ipairs(set.mysteries) do
            local reading = { slot = "slot.gospel", numbering = "hebrew", forms = m.forms }
            local label_html = string.format("%d. %s (%s)", i, esc(t:text("rosary." .. m.id)), esc(Html.reading(reading, t)))
            local text = options.texts and options.texts:reading(reading, options.language)
            if text then
                local key = "rosary" .. i
                line(toggle(key, open[key], label_html))
                if open[key] then line(passage(text)) end
            else
                line(label_html)
            end
        end
        local prayers = options.prayers
        if prayers then
            line(toggle("rosary-prayers", open["rosary-prayers"], "<b>" .. esc(t:text("ui.rosary_prayers")) .. "</b>"))
            if open["rosary-prayers"] then
                local out = { '<div style="margin: 0.3em 0 0.5em 0">' }
                for _i, p in ipairs(prayers.prayers) do
                    table.insert(out, string.format('<div style="margin: 0.3em 0"><b>%s.</b> %s</div>',
                        esc(t:text("prayer." .. p.id)), esc(p.text)))
                end
                table.insert(out, source_note(prayers.source) .. "</div>")
                line(table.concat(out))
            end
            if options.litany and prayers.litany then
                line(toggle("litany", open.litany, "<b>" .. esc(t:text("prayer.litany_of_loreto")) .. "</b>"))
                if open.litany then
                    local out = { '<div style="margin: 0.3em 0 0.5em 0">' }
                    for _i, l in ipairs(prayers.litany.lines) do
                        local response = l.response and (" <i>" .. esc(l.response) .. "</i>") or ""
                        table.insert(out, "<div>" .. esc(l.text) .. response .. "</div>")
                    end
                    if prayers.litany.prayer then
                        table.insert(out, '<div style="margin: 0.4em 0">' .. esc(prayers.litany.prayer) .. "</div>")
                    end
                    table.insert(out, source_note(prayers.source) .. "</div>")
                    line(table.concat(out))
                end
            end
        end
    end

    block("</body></html>")
    return table.concat(parts)
end


return Html
