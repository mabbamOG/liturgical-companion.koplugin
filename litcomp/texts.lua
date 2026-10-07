--[[
Embedded texts: the words of a reading, from a Bible edition in texts/bible/.

The texts are optional: a plugin package without texts/ still works, and a
language without an edition (source/registry.lua, bibles) shows citations
only. An edition folder holds meta.lua (title, attribution), one table per
book ([chapter][verse] = text; "\n" starts a poetic line, a leading "¶" a
paragraph) and versification.lua, which maps the Lectionary's numbering (the
original Hebrew/Greek one) onto the edition's where they differ.

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
        edition = meta and { id = id, dir = dir, meta = meta, map = self.source:get(dir .. "/versification") } or false
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
            if chapter[ev] and not seen[key] then
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
    local edition = self:bible(language)
    if not edition then return nil end
    local verses = {}
    for _i, range in ipairs(reading.forms[1]) do
        local part = range_verses(self, edition, range, reading.numbering)
        if not part then return nil end
        for _j, v in ipairs(part) do table.insert(verses, v) end
    end
    if #verses == 0 then return nil end
    return { verses = verses, attribution = edition.meta.attribution }
end

return Texts
