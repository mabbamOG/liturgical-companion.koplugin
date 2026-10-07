--[[
Recognizes a Bible-like document by its file name or title, to announce the
day when one is opened.
]]

local Scripture = {}

local HINTS = {
    "bible", "bibbia", "biblia", "bíblia", "vulgate", "vulgata", "douay", "rheims",
    "martini", "testament", "gospel", "evangel", "psalm", "psalter", "scripture",
    "scrittura", "sagrada escritura", "sainte bible", "heilige schrift", "pismo",
    "библия", "священное писание", "圣经", "聖經",
}

local PREFIXES = {
    "the ", "holy ", "saint ", "st. ", "st ", "gospel of ", "the gospel of ",
    "book of ", "the book of ", "bible ", "the bible ", "la ", "il ", "le ",
    "les ", "das ", "der ", "die ", "el ", "los ", "las ", "o ", "a ",
    "livro de ", "pismo ", "sacred ", "sagrada ",
}

--- Whether a title starts with a book's name in any language (book names: a
--- list of strings from the translation tables).
local function title_names_a_book(title, book_names)
    local lowered = title:lower()
    for _i, prefix in ipairs(PREFIXES) do
        while lowered:sub(1, #prefix) == prefix do lowered = lowered:sub(#prefix + 1) end
    end
    for _i, name in ipairs(book_names) do
        local needle = name:lower()
        if #needle >= 4 and lowered:sub(1, #needle) == needle then return true end
    end
    return false
end

function Scripture.looks_like(file, title, book_names)
    local haystack = ((file or "") .. " " .. (title or "")):lower()
    for _i, hint in ipairs(HINTS) do
        if haystack:find(hint, 1, true) then return true end
    end
    return title ~= nil and title_names_a_book(title, book_names)
end

return Scripture
