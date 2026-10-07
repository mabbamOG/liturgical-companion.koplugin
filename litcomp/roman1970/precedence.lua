--[[
Which celebrations a day keeps, and in which role (General Norms for the
Liturgical Year and the Calendar, 59-61; Table of Liturgical Days):

    primary        the day's celebration
    optional       may be celebrated instead (optional memorials, equal rank)
    commemoration  a memorial on a privileged weekday (Lent, 17-31 December)
    impeded        outranked this year

The result lists the primary celebration first.
]]

local Date = require("litcomp.core.date")

local Precedence = {}

-- Days of prayer kept as the day's primary observance (owner decision
-- 2026-09-29: USCCB prints the 22 January day of prayer so).
local PRIMARY_DAYS_OF_PRAYER = { ["day-of-prayer-for-the-legal-protection-of-unborn-children"] = true }

local function celebration(def, role)
    return {
        id = def.id, title = "celebration." .. (def.title or def.id), role = role, rank = def.rank,
        precedence = def.precedence, colors = def.colors or {}, def = def,
    }
end

local function copy(value, changes)
    local out = {}
    for k, v in pairs(value) do out[k] = v end
    for k, v in pairs(changes or {}) do out[k] = v end
    return out
end

--- The day's celebrations: temporal is the temporal celebration (with its
--- precedence), defs the sanctoral definitions falling on the day.
function Precedence.resolve(temporal, defs)
    local primary_temporal = copy(temporal, { role = "primary" })
    if #defs == 0 then return { primary_temporal } end
    local candidates = {}
    for _i, def in ipairs(defs) do table.insert(candidates, def) end
    table.sort(candidates, function(a, b)
        if a.precedence ~= b.precedence then return a.precedence < b.precedence end
        return a.id < b.id
    end)
    local strongest = candidates[1]
    local tied, tied_count, similar = {}, 0, false
    for _i, def in ipairs(candidates) do
        if def.precedence == strongest.precedence then
            tied[def] = true
            tied_count = tied_count + 1
            if def.similar then similar = true end
        end
    end
    -- Celebrations of equal rank that may share a day become alternatives.
    if tied_count > 1 and similar then
        local out = { primary_temporal }
        for _i, def in ipairs(candidates) do
            table.insert(out, celebration(def, tied[def] and "optional" or "impeded"))
        end
        return out
    end
    if strongest.precedence < temporal.precedence and strongest.rank ~= "optional_memorial" then
        local out = { celebration(strongest, "primary") }
        for i = 2, #candidates do table.insert(out, celebration(candidates[i], "impeded")) end
        return out
    end
    local out = { primary_temporal }
    for _i, def in ipairs(candidates) do
        local role
        if (def.rank == "memorial" or def.rank == "optional_memorial") and temporal.precedence == 9 then
            role = "commemoration"
        elseif def.rank == "optional_memorial" and def.precedence < temporal.precedence then
            role = "optional"
        else
            role = "impeded"
        end
        table.insert(out, celebration(def, role))
    end
    return out
end

-- The Saturday memorial of the Blessed Virgin Mary (General Norms 15).
local SATURDAY_BVM = {
    id = "saturday-memorial-of-the-blessed-virgin-mary", rank = "optional_memorial",
    precedence = 12, colors = { "white" }, commons = { "blessed_virgin_mary" },
}

--- The day's celebrations after the day-level rules: a day of prayer kept as
--- primary; the Saturday memorial of Mary on free Saturdays of Ordinary Time.
function Precedence.day(dn, state, temporal, defs)
    local celebrations = Precedence.resolve(temporal, defs)
    local promoted
    for _i, c in ipairs(celebrations) do
        if PRIMARY_DAYS_OF_PRAYER[c.id] then promoted = c; break end
    end
    if promoted and celebrations[1].rank == "weekday" then
        local rebuilt = { copy(promoted, { role = "primary", rank = "day_of_prayer" }), copy(celebrations[1], { role = "optional" }) }
        for i = 2, #celebrations do
            if celebrations[i] ~= promoted then table.insert(rebuilt, celebrations[i]) end
        end
        celebrations = rebuilt
    end
    if Date.weekday(dn) == Date.SATURDAY and state.season == "ordinary_time" and celebrations[1].rank == "weekday" then
        table.insert(celebrations, celebration(SATURDAY_BVM, "optional"))
    end
    return celebrations
end

return Precedence
