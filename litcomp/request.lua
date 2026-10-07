--[[
Validates a request against the registry (source/registry.lua).

    Request.normalize(registry, { date = "2026-10-01", calendar = "IT", missal = "auto" })
      -> { date, dn, calendar = <registry calendar>, missal = <registry missal> }
      or nil, rejection

A rejection names what is wrong and never substitutes anything:
    { code = "missal_not_in_force", tag = "rejection.missal_not_in_force",
      params = { date = "1800-01-01", missal = "1962" } }
]]

local Date = require("litcomp.core.date")

local Request = {}

local function reject(code, params)
    return nil, { code = code, tag = "rejection." .. code, params = params or {} }
end

local function find(list, key)
    for _i, item in ipairs(list) do
        if item.key == key then return item end
    end
    return nil
end

--- The edition in force on an ISO date, or nil before the first.
function Request.missal_for(registry, date)
    local chosen
    for _i, missal in ipairs(registry.missals) do
        if date >= missal.from then chosen = missal end
    end
    return chosen
end

function Request.defines(missal, calendar_key)
    for _i, key in ipairs(missal.calendars) do
        if key == "*" or key == calendar_key then return true end
    end
    return false
end

function Request.normalize(registry, request)
    if type(request) ~= "table" then return reject("bad_request") end
    local dn = Date.parse(request.date)
    if not dn then return reject("bad_date", { date = tostring(request.date) }) end
    local date = Date.iso(dn)
    if date < registry.gregorian_start then return reject("before_gregorian", { date = date }) end
    local year = Date.year(dn)
    if year > registry.last_year then return reject("after_last_year", { date = date, year = registry.last_year }) end
    local calendar = find(registry.calendars, request.calendar)
    if not calendar then return reject("unknown_calendar", { calendar = tostring(request.calendar) }) end
    local missal
    if request.missal == nil or request.missal == "auto" then
        missal = Request.missal_for(registry, date)
        if not missal then return reject("no_missal", { date = date }) end
    else
        missal = find(registry.missals, request.missal)
        if not missal then return reject("unknown_missal", { missal = tostring(request.missal) }) end
        if year < missal.first_year then
            return reject("missal_not_in_force", { date = date, missal = missal.key, year = missal.first_year })
        end
    end
    if not Request.defines(missal, calendar.key) then
        return reject("calendar_not_in_missal", { calendar = calendar.key, missal = missal.key })
    end
    return { date = date, dn = dn, calendar = calendar, missal = missal }
end

return Request
