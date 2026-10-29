--[[
Embedded texts: the words of a reading, from a Bible edition in texts/bible/.

The texts are optional: a plugin package without texts/ still works, and a
language without an edition (source/registry.lua, bibles) shows citations
only. An edition folder holds meta.lua (title, attribution), one table per
book ([chapter][verse] = text; "\n" starts a poetic line, a leading "¶" a
paragraph) and versification.lua, which maps the Lectionary's numbering (the
original Hebrew/Greek one) onto the edition's where they differ.

The Office of Readings and the Catena Aurea (texts/office/, texts/catena/) and the Rosary
prayers (texts/prayers/) are in the languages that have a file; any other language
shows the English one, and the panel says so (ui.text_in_english).

A passage is all or nothing: if any part of a citation cannot be found, the
reading has no text rather than a partial or misplaced one.
]]

local Psalms = require("litcomp.roman1970.psalms")

local Texts = {}
Texts.__index = Texts

function Texts.new(source, registry)
    return setmetatable({ source = source, bibles = registry.bibles or {}, editions = {} }, Texts)
end

-- The edition record { meta, map }, or false when it is not installed.
function Texts:edition(id)
    local edition = self.editions[id]
    if edition == nil then
        local dir = "texts/bible/" .. id
        local meta = self.source:find(dir .. "/meta")
        edition = meta and { id = id, dir = dir, meta = meta, map = self.source:get(dir .. "/versification"),
            supplements = self.source:find(dir .. "/supplements") } or false
        self.editions[id] = edition
    end
    return edition
end

--- The Bible edition for a language, or nil.
function Texts:bible(language)
    local id = self.bibles[language]
    return id and self:edition(id) or nil
end

local function book_table(self, edition, book)
    return self.source:find(edition.dir .. "/" .. book)
end

-- A Lectionary verse in the edition's numbering.
local function map_verse(edition, book, chapter, verse)
    for _i, r in ipairs(edition.map.ranges) do
        if r[1] == book and r[2] == chapter and verse >= r[3] and verse <= r[4] then
            return r[5], r[6] + (verse - r[3])
        end
    end
    return chapter, verse
end

local function last_verse(chapter)
    local last = 0
    for v in pairs(chapter) do if v > last then last = v end end
    return last
end

local function endpoint(value)
    local c, v = value:match("^(%d+):(%d+)")
    return tonumber(c), tonumber(v)
end

-- The verses { chapter, verse, text } of one range, or nil. The range is
-- walked verse by verse in the Lectionary's numbering, each verse mapped
-- onto the edition's: a verse the edition leaves out (a critical-text
-- omission) is skipped, a verse past the end of a chapter fails.
local function range_verses(self, edition, range, numbering)
    local book = range.book:gsub("^book%.", "")
    local data = book_table(self, edition, book)
    if not data then return nil end
    local c1, v1 = endpoint(range.from)
    local c2, v2 = endpoint(range.to)
    if not (c1 and c2) then return nil end
    if book == "PSA" and numbering == "greek_vulgate" then
        c1, v1 = Psalms.vulgate_to_hebrew(c1, v1)
        c2, v2 = Psalms.vulgate_to_hebrew(c2, v2)
    end
    if c2 < c1 or (c2 == c1 and v2 < v1) then return nil end
    local sizes = edition.map.verses[book]
    local out, seen = {}, {}
    for c = c1, c2 do
        local size = sizes and sizes[c] or (data[c] and last_verse(data[c]))
        if not size then return nil end
        local first, last = (c == c1) and v1 or 1, (c == c2) and v2 or size
        if last > size then return nil end
        for v = first, last do
            local ec, ev = map_verse(edition, book, c, v)
            local chapter = data[ec]
            if not chapter or ev > last_verse(chapter) then return nil end
            local key = ec * 1000 + ev
            if chapter[ev] and chapter[ev] ~= "" and not seen[key] then
                seen[key] = true
                -- Numbered as the Lectionary numbers it, like the citation above it.
                table.insert(out, { chapter = c, verse = v, text = chapter[ev] })
            end
        end
    end
    return out
end

--- The text of a reading (an entry reading) in a language:
--- { verses = { { chapter, verse, text }... }, attribution }, or nil; the
--- verses keep the Lectionary's numbering.
--- The first form of a citation with alternatives is the one given.
function Texts:reading(reading, language)
    local historical = reading.numbering == "vulgate"
    local edition = historical and language == "en" and self:edition("en-dra") or self:bible(language)
    if not edition then return nil end
    local Citation = require("litcomp.core.citation")
    local forms = {}
    for i, ranges in ipairs(reading.forms) do
        forms[i] = {}
        for j, r in ipairs(ranges) do
            forms[i][j] = { book = r.book:gsub("^book%.", ""), from = r.from, to = r.to }
        end
    end
    local key = Citation.format(forms) .. "/" .. (reading.numbering or "hebrew")
    local supplement = edition.supplements and edition.supplements[key]
    if supplement then return supplement end
    if historical then return require("litcomp.vulgate").read(self.source, edition, reading) end
    local verses = {}
    for _i, range in ipairs(reading.forms[1]) do
        local part = range_verses(self, edition, range, reading.numbering)
        if not part then return nil end
        for _j, v in ipairs(part) do table.insert(verses, v) end
    end
    if #verses == 0 then return nil end
    return { verses = verses, attribution = edition.meta.attribution }
end

--- The embedded file of a kind ("office", "catena") for a language, else English's:
--- the data and the language it is in, or nil.
local function embedded(self, kind, language)
    self.files = self.files or {}
    for _i, code in ipairs(language == "en" and { "en" } or { language, "en" }) do
        local key = kind .. "/" .. code
        local data = self.files[key]
        if data == nil then
            data = self.source:find("texts/" .. key) or false
            self.files[key] = data
        end
        if data then return data, code end
    end
    return nil
end

--- An Office of Readings reading's text in a language (texts/office/<language>.lua; English
--- where the language has none, then `language` is "en"):
--- { work, chapters, edition, text, language }, or nil.
function Texts:office(id, language)
    local data, code = embedded(self, "office", language)
    local text = data and id and data.readings[id]
    if not text then return nil end
    return setmetatable({ language = code }, { __index = text })
end

--- The Catena Aurea's texts for a Mass's chain (entry mass.catena) in a
--- language: { segments = { { author = "<author id>", text }... }, source, language },
--- or nil (texts/catena/<language>.lua; English where the language has none).
function Texts:catena(catena, language)
    local data, code = embedded(self, "catena", language)
    if not data or not catena or not catena.passages then return nil end
    local segments = {}
    for _i, key in ipairs(catena.passages) do
        local passage = data.passages[key]
        for _j, s in ipairs(passage and passage[catena.chain] or {}) do table.insert(segments, s) end
    end
    if #segments == 0 then return nil end
    return { segments = segments, source = data.source, language = code }
end

return Texts
