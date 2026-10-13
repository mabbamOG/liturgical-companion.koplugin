--[[
The Roman Martyrology of the day (the current edition, editio altera 2004).

References, in every package: source/martyrology/MM.lua lists each day's
entries in order (id, kind, the names in en, it, la as the CRMEDR gives them).
Embedded content, optional: texts/martyrology/<language>.lua gives, by id, the
name in that language (from Wikidata, for languages the CRMEDR does not name)
and the entry's text with its origin:

    1916  The Roman Martyrology (Baltimore, 1916), public domain (en)
    1913  Martyrologium Romanum (Mechelen, 1913), public domain (la)
    mt    the 1916 text translated by an AI model (the file's `translator`)
    wp    the lead of the Wikipedia article (`article`), CC BY-SA 4.0

A name from Wikidata is a bare name: the panel gives it its title (saint or
blessed, by sex) from the translation table ("martyrology.saint" ...). An
entry with no name in the language shows its Latin name.
]]

local Martyrology = {}
Martyrology.__index = Martyrology

local OWN = { en = true, it = true, la = true }

function Martyrology.new(source)
    return setmetatable({ source = source, months = {}, text_cache = {} }, Martyrology)
end

local function month_table(self, month)
    local data = self.months[month]
    if data == nil then
        data = self.source:find(string.format("source/martyrology/%02d", month)) or false
        self.months[month] = data
    end
    return data
end

--- The embedded texts of a language { source, translator, entries }, or nil.
function Martyrology:texts(language)
    local data = self.text_cache[language]
    if data == nil then
        data = self.source:find("texts/martyrology/" .. language) or false
        self.text_cache[language] = data
    end
    return data or nil
end

--- The day's entries { id, kind, name (or nil), latin, title (a tag or nil),
--- text, from, article }, in order, or nil when the day has none. t: the
--- language's translation table (for the titles of Wikidata names).
function Martyrology:day(month, day, language, with_texts)
    local data = month_table(self, month)
    local items = data and data[day]
    if not items then return nil end
    local texts = with_texts and self:texts(language)
    local out = {}
    for _i, e in ipairs(items) do
        local row = texts and texts.entries[e.id]
        local entry = { id = e.id, kind = e.kind, latin = e.la }
        if OWN[language] then
            -- The CRMEDR leaves a few names empty (fifteen in English).
            entry.name = e[language] ~= "" and e[language] or nil
        elseif row and row.name and e.kind ~= "celebration" then
            entry.name = row.name
            entry.title = "martyrology." .. e.kind .. (row.female and "_female" or "_male")
        end
        if row and row.text then
            entry.text, entry.from, entry.article = row.text, row.from, row.article
        end
        table.insert(out, entry)
    end
    return out, texts
end

return Martyrology
