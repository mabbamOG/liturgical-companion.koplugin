--[[
The temporal cycle of the Missal of Paul VI: movable dates, seasons, the
temporal celebration of each day, the Sunday and weekday cycles.

Transfers are the solemnities a calendar keeps on Sunday:
{ epiphany = true, ascension = true, corpus_christi = true }.
]]

local Date = require("litcomp.core.date")
local Computus = require("litcomp.core.computus")

local floor = math.floor
local SUNDAY, SATURDAY = Date.SUNDAY, Date.SATURDAY

local Temporal = {}

local NO_TRANSFERS = {}

-- Memoized per transfers table and year: computing a year's dates is the
-- engine's most frequent operation.
local memo = setmetatable({}, { __mode = "k" })

--- The movable dates of a year (day numbers).
function Temporal.dates(year, transfers)
    transfers = transfers or NO_TRANSFERS
    local by_year = memo[transfers]
    if not by_year then by_year = {}; memo[transfers] = by_year end
    if by_year[year] then return by_year[year] end
    local easter = Computus.easter(year)
    local christmas = Date.day(year, 12, 25)
    -- Advent begins four Sundays before Christmas: the fourth Sunday of Advent
    -- is the last Sunday before 25 December (18 December when it is a Sunday).
    local advent = christmas - Date.weekday(christmas) - 21
    local epiphany = Date.day(year, 1, 6)
    if transfers.epiphany then epiphany = Date.on_or_after(Date.day(year, 1, 2), SUNDAY) end
    local _y, em, ed = Date.civil(epiphany)
    -- Epiphany on 7 or 8 January: the Baptism is the Monday after it.
    local baptism = (em == 1 and ed >= 7) and (epiphany + 1) or Date.after(epiphany, SUNDAY)
    local dates = {
        epiphany = epiphany, baptism = baptism,
        ash_wednesday = easter - 46, palm_sunday = easter - 7,
        holy_thursday = easter - 3, good_friday = easter - 2, holy_saturday = easter - 1,
        easter = easter, divine_mercy = easter + 7,
        ascension = transfers.ascension and (easter + 42) or (easter + 39),
        pentecost = easter + 49, trinity = easter + 56,
        corpus_christi = transfers.corpus_christi and (easter + 63) or (easter + 60),
        sacred_heart = easter + 68, immaculate_heart = easter + 69,
        christ_the_king = advent - 7, advent = advent, christmas = christmas,
        holy_family = Temporal.holy_family(year),
    }
    by_year[year] = dates
    return dates
end

--- The Holy Family: the Sunday within the Christmas octave, else 30 December.
function Temporal.holy_family(year)
    local christmas = Date.day(year, 12, 25)
    local sunday = Date.after(christmas, SUNDAY)
    if sunday <= christmas + 6 then return sunday end
    return Date.day(year, 12, 30)
end

--- season ("advent", "christmas", "lent", "easter_triduum", "easter",
--- "ordinary_time"), week (nil in the Triduum) and the day's colour.
function Temporal.state(dn, transfers)
    local year = Date.year(dn)
    local d = Temporal.dates(year, transfers)
    if dn >= d.christmas then
        return { season = "christmas", week = floor((dn - d.christmas) / 7) + 1, color = "white" }
    end
    if dn >= d.advent then
        return { season = "advent", week = floor((dn - d.advent) / 7) + 1, color = "violet" }
    end
    if dn >= d.easter and dn <= d.pentecost then
        return { season = "easter", week = floor((dn - d.easter) / 7) + 1, color = (dn == d.pentecost) and "red" or "white" }
    end
    if dn >= d.holy_thursday and dn < d.easter then
        local color = (dn == d.holy_thursday and "white") or (dn == d.good_friday and "red") or nil
        return { season = "easter_triduum", color = color }
    end
    if dn >= d.ash_wednesday and dn < d.holy_thursday then
        local first_sunday = Date.after(d.ash_wednesday, SUNDAY)
        local week = (dn < first_sunday) and 1 or (floor((dn - first_sunday) / 7) + 1)
        return { season = "lent", week = week, color = "violet" }
    end
    if dn <= d.baptism then
        return { season = "christmas", week = floor((dn - Date.day(year, 1, 1)) / 7) + 2, color = "white" }
    end
    if dn < d.ash_wednesday then
        -- Week 1 runs from the day after the Baptism to the next Saturday.
        local second_sunday = Date.after(d.baptism, SUNDAY)
        local week = (dn < second_sunday) and 1 or (floor((dn - second_sunday) / 7) + 2)
        return { season = "ordinary_time", week = week, color = "green" }
    end
    -- After Pentecost the weeks count back from the 34th, which ends before Advent.
    local week = 34 - floor((d.advent - dn) / 7)
    if Date.weekday(dn) == SUNDAY then week = week + 1 end
    return { season = "ordinary_time", week = week, color = "green" }
end

--- The Sunday cycle (A, B, C) and weekday cycle (I, II) of the liturgical year.
function Temporal.cycles(dn)
    local year = Date.year(dn)
    if dn >= Temporal.dates(year).advent then year = year + 1 end
    return ({ [1] = "A", [2] = "B", [0] = "C" })[year % 3], (year % 2 == 1) and "I" or "II"
end

function Temporal.psalter_week(week)
    return week and ((week - 1) % 4 + 1) or nil
end

-- Temporal celebrations with their own date, rank and precedence (Table of
-- Liturgical Days); a later row wins when two fall on the same day.
local function fixed(dn, d)
    local year = Date.year(dn)
    local rows = {
        { Date.day(year, 1, 1), "mary-mother-of-god", "solemnity", 3 },
        { d.epiphany, "epiphany-of-the-lord", "solemnity", 2 },
        { d.baptism, "baptism-of-the-lord", "feast", 5 },
        { d.ash_wednesday, "ash-wednesday", "privileged_weekday", 2 },
        { d.palm_sunday, "palm-sunday", "sunday", 2 },
        { d.holy_thursday, "holy-thursday", "triduum", 1 },
        { d.good_friday, "good-friday", "triduum", 1 },
        { d.holy_saturday, "holy-saturday", "triduum", 1 },
        { d.easter, "easter-sunday", "solemnity", 1 },
        { d.ascension, "ascension-of-the-lord", "solemnity", 2 },
        { d.pentecost, "pentecost-sunday", "solemnity", 2 },
        { d.trinity, "most-holy-trinity", "solemnity", 3 },
        { d.corpus_christi, "corpus-christi", "solemnity", 3 },
        { d.sacred_heart, "most-sacred-heart-of-jesus", "solemnity", 3 },
        { d.christ_the_king, "christ-the-king", "solemnity", 2 },
        { d.christmas, "nativity-of-the-lord", "solemnity", 2 },
        { d.holy_family, "holy-family", "feast", 5 },
    }
    local hit
    for _i, row in ipairs(rows) do
        if row[1] == dn then hit = row end
    end
    return hit
end

-- Colours that differ from the season's.
local COLORS = {
    ["palm-sunday"] = "red", ["most-holy-trinity"] = "white", ["corpus-christi"] = "white",
    ["most-sacred-heart-of-jesus"] = "white", ["christ-the-king"] = "white",
}
-- Gaudete and Laetare: rose where it is the practice, else violet (GIRM 346f).
local ROSE = { ["advent-3-sunday"] = true, ["lent-4-sunday"] = true }

--- The key of the day's title in the "day." namespace, for days that are not
--- fixed celebrations: "ordinary-time-26-thursday", "christmas-octave-3"...
local function title_key(dn, d, state, id)
    local wd = Date.weekday(dn)
    local wname = Date.WEEKDAYS[wd]
    local _y, month, day = Date.civil(dn)
    if month == 12 and day >= 26 and wd ~= SUNDAY then return "christmas-octave-" .. (day - 24) end
    if month == 1 and day >= 2 and dn < d.epiphany then
        if wd == SUNDAY then return "second-sunday-after-christmas" end
        return "january-" .. day
    end
    if month == 1 and dn > d.epiphany and dn < d.baptism and wd ~= SUNDAY then return "after-epiphany-" .. wname end
    if dn > d.palm_sunday and dn < d.holy_thursday then return "holy-week-" .. wname end
    if dn > d.easter and dn < d.easter + 7 then return "easter-octave-" .. wname end
    return id
end

--- The temporal celebration of a day:
--- { id, title, rank, precedence, colors, temporal = true }.
function Temporal.celebration(dn, transfers)
    local d = Temporal.dates(Date.year(dn), transfers)
    local state = Temporal.state(dn, transfers)
    local row = fixed(dn, d)
    local id, rank, precedence, title
    if row then
        id, rank, precedence = row[2], row[3], row[4]
        title = "celebration." .. id
    else
        local wd = Date.weekday(dn)
        local season = state.season:gsub("_", "-")
        if wd == SUNDAY then
            id, rank = string.format("%s-%d-sunday", season, state.week), "sunday"
            precedence = (state.season == "advent" or state.season == "lent" or state.season == "easter") and 2 or 6
        else
            local _y, month, day = Date.civil(dn)
            local easter_octave = dn > d.easter and dn < d.easter + 7
            local holy_week = dn > d.palm_sunday and dn < d.holy_thursday
            local privileged = state.season == "lent" or easter_octave or (month == 12 and day >= 17)
            rank = privileged and "privileged_weekday" or "weekday"
            if easter_octave or holy_week then
                precedence = 2
            else
                precedence = privileged and 9 or 13
            end
            if dn > d.ash_wednesday and dn < d.ash_wednesday + 4 then
                id = Date.WEEKDAYS[wd] .. "-after-ash-wednesday"
            else
                id = string.format("%s-%d-%s", season, state.week, Date.WEEKDAYS[wd])
            end
        end
        title = "day." .. title_key(dn, d, state, id)
    end
    local color = COLORS[id] or state.color
    local colors = {}
    if ROSE[id] then table.insert(colors, "rose") end
    if color then table.insert(colors, color) end
    return {
        id = id, title = title, rank = rank, precedence = precedence, colors = colors,
        temporal = true,
    }
end

--- The day key of the weekday Lectionary: the temporal celebration's id, or
--- "MM-DD" for 17-24 December and the Christmas weekdays, or "after-epiphany-N".
function Temporal.lectionary_key(dn, transfers)
    local year, month, day = Date.civil(dn)
    local d = Temporal.dates(year, transfers)
    local temporal = Temporal.celebration(dn, transfers)
    if Date.weekday(dn) == SUNDAY or (temporal.rank ~= "weekday" and temporal.rank ~= "privileged_weekday") then
        return temporal.id
    end
    if month == 12 and ((day >= 17 and day <= 24) or day >= 29) then return string.format("%02d-%02d", month, day) end
    if month == 1 and dn < d.epiphany then return string.format("%02d-%02d", month, day) end
    if month == 1 and dn > d.epiphany and dn < d.baptism then
        -- Epiphany on 6 January: by date (7 January is "after-epiphany-1");
        -- moved to Sunday: by weekday (Monday is "after-epiphany-1").
        if d.epiphany == Date.day(year, 1, 6) then return "after-epiphany-" .. (day - 6) end
        return "after-epiphany-" .. Date.weekday(dn)
    end
    return temporal.id
end

Temporal.SATURDAY = SATURDAY

return Temporal
