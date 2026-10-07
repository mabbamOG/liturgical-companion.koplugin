--[[
The Masses and non-Mass rites of a day, and each Mass's Gloria, Creed and
sequences (Missal of Paul VI).
]]

local Date = require("litcomp.core.date")
local Temporal = require("litcomp.roman1970.temporal")

local Masses = {}

-- Solemnities with a vigil Mass on the evening before.
local VIGILS = {
    ["epiphany-of-the-lord"] = true, ["ascension-of-the-lord"] = true,
    ["nativity-of-john-the-baptist"] = true, ["peter-and-paul-apostles"] = true,
    ["assumption-of-the-blessed-virgin-mary"] = true,
}

local function mass(celebration, kind, extra)
    local value = { celebration = celebration, kind = kind or "day" }
    for k, v in pairs(extra or {}) do value[k] = v end
    return value
end

--- masses, rites for a day whose primary celebration is `primary`; tomorrow is
--- the following day's primary celebration (for vigils), or nil.
function Masses.of_day(dn, primary, transfers, tomorrow)
    local year, month, day = Date.civil(dn)
    local d = Temporal.dates(year, transfers)
    local id = primary.id
    local masses, rites = {}, {}
    if dn == d.good_friday then
        table.insert(rites, { id = "celebration-of-the-passion" })
        return masses, rites
    end
    if dn == d.holy_saturday then
        table.insert(rites, { id = "holy-saturday" })
        -- Holy Saturday itself has no Mass and no colour; the Vigil is white.
        table.insert(masses, mass("easter-sunday", "easter-vigil", { colors = { "white" } }))
        return masses, rites
    end
    if dn == d.holy_thursday then
        return { mass(id, "chrism"), mass(id, "evening") }, rites
    end
    if id == "commemoration-of-all-the-faithful-departed" then
        return { mass(id, "first"), mass(id, "second"), mass(id, "third") }, rites
    end
    if dn == d.pentecost - 1 then
        table.insert(masses, mass(id))
        table.insert(masses, mass("pentecost-sunday", "vigil"))
        table.insert(masses, mass("pentecost-sunday", "extended-vigil"))
        return masses, rites
    end
    if month == 12 and day == 24 then
        return { mass(id), mass("nativity-of-the-lord", "vigil") }, rites
    end
    if month == 12 and day == 25 then
        return { mass(id, "night"), mass(id, "dawn"), mass(id, "day") }, rites
    end
    table.insert(masses, mass(id))
    if tomorrow and VIGILS[tomorrow.id] and Date.year(dn + 1) == year then
        table.insert(masses, mass(tomorrow.id, "vigil"))
    end
    return masses, rites
end

--- Sets gloria, creed and sequences on each Mass.
function Masses.flags(dn, masses, celebrations, transfers)
    local state = Temporal.state(dn, transfers)
    local _y, month, day = Date.civil(dn)
    local rank_of = {}
    for _i, c in ipairs(celebrations) do rank_of[c.id] = c.rank end
    for _i, m in ipairs(masses) do
        local id = m.celebration
        local rank = rank_of[id]
        if not rank and (m.kind == "vigil" or m.kind == "extended-vigil") then rank = "solemnity" end
        if m.kind == "proper-solemnity" then rank = "solemnity" end
        local easter_vigil = m.kind == "easter-vigil"
        local octave_weekday = rank == "privileged_weekday"
            and ((state.season == "easter" and state.week == 1) or (month == 12 and day >= 26))
        local gloria = rank == "solemnity" or rank == "feast" or octave_weekday
            or (rank == "sunday" and state.season ~= "advent" and state.season ~= "lent")
        local creed = (rank == "solemnity" or rank == "sunday") and not easter_vigil
        if easter_vigil or id == "holy-thursday" then gloria = true end
        local sequences = {}
        if id == "easter-sunday" and not easter_vigil then table.insert(sequences, "victimae-paschali-laudes") end
        if id == "pentecost-sunday" and m.kind == "day" then table.insert(sequences, "veni-sancte-spiritus") end
        m.gloria, m.creed, m.sequences = gloria and true or false, creed and true or false, sequences
    end
end

return Masses
