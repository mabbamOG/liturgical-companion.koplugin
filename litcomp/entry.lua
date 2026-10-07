--[[
The entry: one liturgical day for one ruleset, in language-neutral form.

Every displayable value is a tag ("<namespace>.<key>"), resolved to text by
litcomp.i18n; numbers and Scripture locators are plain values.

    entry = {
        schema = 1,
        date = "2026-10-01", weekday = "weekday.thursday",
        calendar = "calendar.IT", missal = "missal.1970",
        season = "season.ordinary_time", week = 26,             -- either may be nil
        cycles = { sunday = "A", weekday = "II", psalter = 2 },  -- nil before 1970
        celebrations = {                                         -- the primary first
            { id = "...", title = "celebration.<id>" | "day.<key>" | "tridentine.<key>",
              role = "role.primary", rank = "rank.memorial", colors = { "color.white" },
              obligation = false, temporal = false },                -- temporal: of the Proper of Time
        },
        rites = { { title = "rite.celebration-of-the-passion" } },   -- rites without Mass
        masses = {
            { kind = "mass.day", celebration = "<id>", title = "<celebration title tag>",
              gloria = false, creed = false, sequences = { "sequence.<id>" },
              colors = { "color.white" },                            -- only when not the day's
              readings = { { slot = "slot.first_reading", numbering = "hebrew"?,
                             forms = { { { book = "book.ISA", from = "66:10", to = "66:14" } } } } },
              weekday_readings = true?,                              -- a memorial's weekday readings
              common = "common.<name>"?,                             -- readings from a Common
              catena = { authors = { "author.<id>" }, segments = 3 } },  -- nil without a chain
        },
        office = {                                                -- nil before 1970
            reading = { author = "author.<id>", work = "work.<id>", locator = "...",
                        basis = "basis.proper" | "basis.common" | "basis.temporal", celebration = "<id>" },
            alternatives = { ... },
        },
        variants = { { variant = "variant.<id>", places = { "..." }, celebration = { ... } } },
    }
]]

local Date = require("litcomp.core.date")

local Entry = {}

Entry.SCHEMA = 1

local function tags(prefix, list)
    local out = {}
    for _i, value in ipairs(list or {}) do table.insert(out, prefix .. value) end
    return out
end

local function celebration(c)
    return {
        id = c.id, title = c.title, role = "role." .. (c.role or "primary"), rank = "rank." .. c.rank,
        colors = tags("color.", c.colors), obligation = c.obligation and true or false,
        temporal = c.temporal and true or false,
    }
end

local function readings(list)
    if not list then return nil end
    local out = {}
    for _i, r in ipairs(list) do
        local forms = {}
        for _j, ranges in ipairs(r.forms) do
            local converted = {}
            for _k, range in ipairs(ranges) do
                table.insert(converted, { book = "book." .. range.book, from = range.from, to = range.to })
            end
            table.insert(forms, converted)
        end
        table.insert(out, { slot = "slot." .. r.slot, numbering = r.numbering, forms = forms })
    end
    return out
end

local function office_reading(r)
    if not r then return nil end
    return {
        author = "author." .. r.author, work = "work." .. r.work, locator = r.locator,
        basis = "basis." .. r.basis, celebration = r.celebration,
    }
end

--- An entry from a ruleset's computed day (see litcomp.roman1970, litcomp.tridentine).
function Entry.build(day)
    local entry = {
        schema = Entry.SCHEMA,
        date = day.date,
        weekday = "weekday." .. Date.WEEKDAYS[Date.weekday(day.dn)],
        calendar = "calendar." .. day.calendar,
        missal = "missal." .. day.missal,
        season = day.season and ("season." .. day.season) or nil,
        week = day.week,
        cycles = day.cycles,
        celebrations = {},
        rites = {},
        masses = {},
    }
    for _i, c in ipairs(day.celebrations) do table.insert(entry.celebrations, celebration(c)) end
    for _i, r in ipairs(day.rites or {}) do table.insert(entry.rites, { title = "rite." .. r.id }) end
    for _i, m in ipairs(day.masses) do
        local mass = {
            kind = "mass." .. m.kind, celebration = m.celebration, title = day.title_of(m.celebration),
            gloria = m.gloria and true or false, creed = m.creed and true or false,
            sequences = tags("sequence.", m.sequences), colors = m.colors and tags("color.", m.colors) or nil,
            readings = readings(m.readings) or {}, weekday_readings = m.weekday_readings or nil,
            common = m.common and ("common." .. m.common) or nil,
        }
        if m.catena then mass.catena = { authors = tags("author.", m.catena.authors), segments = m.catena.segments } end
        table.insert(entry.masses, mass)
    end
    if day.office then
        local alternatives = {}
        for _i, r in ipairs(day.office.alternatives or {}) do table.insert(alternatives, office_reading(r)) end
        entry.office = { reading = office_reading(day.office.reading), alternatives = alternatives }
    end
    if day.variants then
        entry.variants = {}
        for _i, v in ipairs(day.variants) do
            table.insert(entry.variants, { variant = "variant." .. v.variant, places = v.places, celebration = celebration(v.celebration) })
        end
    end
    return entry
end

--- Every tag in an entry (a set: tag -> true).
function Entry.tags(entry)
    local found = {}
    local function walk(value, key)
        if type(value) == "table" then
            for k, v in pairs(value) do
                if k ~= "places" and k ~= "id" and k ~= "celebration" and k ~= "locator" and k ~= "from" and k ~= "to" then
                    walk(v, k)
                end
            end
        elseif type(value) == "string" and key ~= "date" and key ~= "numbering" and key ~= "sunday" and key ~= "weekday_cycle" then
            if value:match("^[a-z]+%.") then found[value] = true end
        end
    end
    walk(entry)
    return found
end

local TAG = "^[a-z]+%.[^%s]+$"

--- A list of problems with an entry's shape (empty when valid).
function Entry.check(entry)
    local problems = {}
    local function need(cond, message) if not cond then table.insert(problems, message) end end
    need(entry.schema == Entry.SCHEMA, "schema")
    need(Date.parse(entry.date) ~= nil, "date")
    for _i, field in ipairs({ "weekday", "calendar", "missal" }) do
        need(type(entry[field]) == "string" and entry[field]:match(TAG), field)
    end
    need(#entry.celebrations >= 1, "no celebration")
    need(entry.celebrations[1] and entry.celebrations[1].role == "role.primary", "the first celebration is not primary")
    for i, c in ipairs(entry.celebrations) do
        need(type(c.title) == "string" and c.title:match(TAG), "celebration " .. i .. " title")
        need(type(c.rank) == "string" and c.rank:match(TAG), "celebration " .. i .. " rank")
    end
    need(#entry.masses > 0 or #entry.rites > 0, "neither Mass nor rite")
    for i, m in ipairs(entry.masses) do
        need(m.kind:match(TAG) and m.title:match(TAG), "mass " .. i .. " kind/title")
        for j, r in ipairs(m.readings) do
            need(r.slot:match(TAG) and #r.forms > 0, string.format("mass %d reading %d", i, j))
        end
    end
    return problems
end

return Entry
