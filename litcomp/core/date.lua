--[[
Proleptic Gregorian civil dates as day numbers (days since 1970-01-01).

Weekdays are 1 = Monday .. 7 = Sunday (ISO 8601).
]]

local floor = math.floor

local Date = {}

Date.WEEKDAYS = { "monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday" }
Date.MONDAY, Date.SATURDAY, Date.SUNDAY = 1, 6, 7

--- The day number of a civil date.
function Date.day(year, month, day)
    local y = (month <= 2) and (year - 1) or year
    local era = floor(y / 400)
    local yoe = y - era * 400
    local mp = (month + 9) % 12
    local doy = floor((153 * mp + 2) / 5) + day - 1
    local doe = yoe * 365 + floor(yoe / 4) - floor(yoe / 100) + doy
    return era * 146097 + doe - 719468
end

--- year, month, day of a day number.
function Date.civil(dn)
    local z = dn + 719468
    local era = floor(z / 146097)
    local doe = z - era * 146097
    local yoe = floor((doe - floor(doe / 1460) + floor(doe / 36524) - floor(doe / 146096)) / 365)
    local y = yoe + era * 400
    local doy = doe - (365 * yoe + floor(yoe / 4) - floor(yoe / 100))
    local mp = floor((5 * doy + 2) / 153)
    local d = doy - floor((153 * mp + 2) / 5) + 1
    local m = (mp < 10) and (mp + 3) or (mp - 9)
    if m <= 2 then y = y + 1 end
    return y, m, d
end

function Date.year(dn)
    return (Date.civil(dn))
end

--- ISO weekday: 1 = Monday .. 7 = Sunday (1970-01-01 was a Thursday).
function Date.weekday(dn)
    return (dn + 3) % 7 + 1
end

function Date.is_leap(year)
    return (year % 4 == 0 and year % 100 ~= 0) or year % 400 == 0
end

--- The first day on or after dn that falls on weekday wd.
function Date.on_or_after(dn, wd)
    return dn + (wd - Date.weekday(dn)) % 7
end

--- The first day strictly after dn that falls on weekday wd.
function Date.after(dn, wd)
    return Date.on_or_after(dn + 1, wd)
end

function Date.iso(dn)
    local y, m, d = Date.civil(dn)
    return string.format("%04d-%02d-%02d", y, m, d)
end

--- The day number of "YYYY-MM-DD", or nil when it is not a real date.
function Date.parse(text)
    if type(text) ~= "string" then return nil end
    local y, m, d = text:match("^(%d%d%d%d)%-(%d%d)%-(%d%d)$")
    if not y then return nil end
    y, m, d = tonumber(y), tonumber(m), tonumber(d)
    if m < 1 or m > 12 or d < 1 then return nil end
    local dn = Date.day(y, m, d)
    local cy, cm = Date.civil(dn)
    if cy ~= y or cm ~= m then return nil end
    return dn
end

return Date
