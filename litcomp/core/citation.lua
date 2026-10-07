--[[
Scripture citations as compact text, the form `source/` stores them in.

    citation := form { " | " form }          -- alternative forms ("or")
    form     := part { "; " part }           -- consecutive ranges
    part     := [BOOK " "] from ["-" to]     -- BOOK is a USFM code (ISA, 1CO);
                                             -- omitted: the previous part's book
    from, to := chapter ":" verse [letters]  -- "to" may omit "chapter:" when
                                             -- it is in the same chapter

    "ISA 66:10-14"   "EXO 14:21-15:1"   "PSA 122:1-2; 122:3-4"   "MRK 1:1-8 | MRK 1:1-4"

A parsed citation is a list of forms, each a list of ranges
{ book = "ISA", from = "66:10", to = "66:14" }.
]]

local Citation = {}

local ENDPOINT = "^(%d+):(%d+[a-z]*)$"

local function parse_part(part, previous_book)
    local book, rest = part:match("^([1-4A-Z][A-Z][A-Z0-9])%s+(.+)$")
    if not book then book, rest = previous_book, part end
    if not book then return nil, "no book in " .. part end
    local from, to = rest:match("^([^-]+)%-(.+)$")
    if not from then from, to = rest, rest end
    local chapter = from:match(ENDPOINT)
    if not chapter then return nil, "bad start " .. from end
    if not to:find(":", 1, true) then to = chapter .. ":" .. to end
    if not to:match(ENDPOINT) then return nil, "bad end " .. to end
    return { book = book, from = from, to = to }, book
end

--- The forms of a citation, or nil and a message.
function Citation.parse(text)
    if type(text) ~= "string" or text == "" then return nil, "empty citation" end
    local forms = {}
    for form_text in (text .. " | "):gmatch("(.-) | ") do
        local ranges, book = {}, nil
        for part in (form_text .. "; "):gmatch("(.-); ") do
            local range, next_book = parse_part(part, book)
            if not range then return nil, next_book .. " in " .. text end
            book = next_book
            table.insert(ranges, range)
        end
        table.insert(forms, ranges)
    end
    return forms
end

local function format_range(range, previous_book)
    local text
    local from_chapter = range.from:match("^(%d+):")
    local to_chapter, to_verse = range.to:match("^(%d+):(.+)$")
    if range.from == range.to then
        text = range.from
    elseif from_chapter == to_chapter then
        text = range.from .. "-" .. to_verse
    else
        text = range.from .. "-" .. range.to
    end
    if range.book ~= previous_book then text = range.book .. " " .. text end
    return text
end

--- The text of a list of forms (the inverse of parse).
function Citation.format(forms)
    local out = {}
    for _i, ranges in ipairs(forms) do
        local parts, book = {}, nil
        for _j, range in ipairs(ranges) do
            table.insert(parts, format_range(range, book))
            book = range.book
        end
        table.insert(out, table.concat(parts, "; "))
    end
    return table.concat(out, " | ")
end

return Citation
