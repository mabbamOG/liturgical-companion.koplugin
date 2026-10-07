--[[
Easter Sunday.

The Gregorian computus (Meeus/Jones/Butcher) for every year from 1583; 1582
began under the Julian calendar, whose Easter fell on 15 April Julian, Sunday
25 April in Gregorian dates.
]]

local Date = require("litcomp.core.date")

local floor = math.floor

local Computus = {}

Computus.GREGORIAN_START = Date.day(1582, 10, 15)

function Computus.easter(year)
    if year == 1582 then return Date.day(1582, 4, 25) end
    local a = year % 19
    local b, c = floor(year / 100), year % 100
    local d, e = floor(b / 4), b % 4
    local f = floor((b + 8) / 25)
    local g = floor((b - f + 1) / 3)
    local h = (19 * a + b - d - g + 15) % 30
    local i, k = floor(c / 4), c % 4
    local l = (32 + 2 * e + 2 * i - h - k) % 7
    local m = floor((a + 11 * h + 22 * l) / 451)
    local month = floor((h + l - 7 * m + 114) / 31)
    local day = (h + l - 7 * m + 114) % 31 + 1
    return Date.day(year, month, day)
end

return Computus
