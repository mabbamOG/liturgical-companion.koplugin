--[[
Psalm numbering: the Hebrew numbering (most vernacular lectionaries) and the
Greek/Vulgate numbering (the Latin and Italian books).

    Hebrew 1-8, 148-150     = Vulgate 1-8, 148-150
    Hebrew 9 + 10           = Vulgate 9 (Hebrew 10:1-18 is Vulgate 9:22-39)
    Hebrew 11-113           = Vulgate 10-112
    Hebrew 114 + 115        = Vulgate 113 (Hebrew 115:1-18 is Vulgate 113:9-26)
    Hebrew 116:1-9, 10-19   = Vulgate 114, 115:1-10
    Hebrew 117-146          = Vulgate 116-145
    Hebrew 147:1-11, 12-20  = Vulgate 146, 147:1-9
]]

local Psalms = {}

local function hebrew_to_vulgate(chapter, verse)
    if chapter <= 9 or chapter >= 148 then return chapter, verse end
    if chapter == 10 then return 9, verse + 21 end
    if chapter <= 113 then return chapter - 1, verse end
    if chapter == 114 then return 113, verse end
    if chapter == 115 then return 113, verse + 8 end
    if chapter == 116 then
        if verse <= 9 then return 114, verse end
        return 115, verse - 9
    end
    if chapter <= 146 then return chapter - 1, verse end
    if verse <= 11 then return 146, verse end
    return 147, verse - 11
end

local function vulgate_to_hebrew(chapter, verse)
    if chapter <= 8 or chapter >= 148 then return chapter, verse end
    if chapter == 9 then
        if verse <= 21 then return 9, verse end
        return 10, verse - 21
    end
    if chapter <= 112 then return chapter + 1, verse end
    if chapter == 113 then
        if verse <= 8 then return 114, verse end
        return 115, verse - 8
    end
    if chapter == 114 then return 116, verse end
    if chapter == 115 then return 116, verse + 9 end
    if chapter <= 145 then return chapter + 1, verse end
    if chapter == 146 then return 147, verse end
    return 147, verse + 11
end

Psalms.hebrew_to_vulgate, Psalms.vulgate_to_hebrew = hebrew_to_vulgate, vulgate_to_hebrew

local function convert_range(range, convert)
    local out = { book = range.book }
    for _i, endpoint in ipairs({ "from", "to" }) do
        local c, v, tail = range[endpoint]:match("^(%d+):(%d+)([a-z]*)$")
        if not c then return nil end
        local mc, mv = convert(tonumber(c), tonumber(v))
        if not mc then return nil end
        out[endpoint] = string.format("%d:%d%s", mc, mv, tail)
    end
    return out
end

local function convert_reading(reading, target)
    local convert = (target == "greek_vulgate") and hebrew_to_vulgate or vulgate_to_hebrew
    local forms = {}
    for _i, ranges in ipairs(reading.forms) do
        local converted = {}
        for _j, range in ipairs(ranges) do
            if range.book == "PSA" then
                local c = convert_range(range, convert)
                if not c then return nil end
                table.insert(converted, c)
            else
                table.insert(converted, range)
            end
        end
        table.insert(forms, converted)
    end
    return { slot = reading.slot, numbering = target, forms = forms }
end

--- The readings with psalm references in the target numbering. A reading
--- whose numbering is not stated keeps its references as they are.
function Psalms.renumber(readings, target)
    local out = {}
    for _i, reading in ipairs(readings) do
        local numbering = reading.numbering
        if numbering and numbering ~= target and (numbering == "hebrew" or numbering == "greek_vulgate") then
            table.insert(out, convert_reading(reading, target) or reading)
        else
            table.insert(out, reading)
        end
    end
    return out
end

return Psalms
