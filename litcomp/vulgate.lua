-- Historical citations retain Vulgate addresses. Other Bible editions are
-- reached through the pinned original-to-Clementine map, including splits
-- and merges. Unmapped long/short recensions fail closed to supplements.
local Vulgate = {}
local inverses = setmetatable({}, { __mode = "k" })

local function targets(map, book, chapter, verse)
    local out = {}
    for _, r in ipairs(map.ranges) do
        if r[1] == book and r[2] == chapter and verse >= r[3] and verse <= r[4] then
            table.insert(out, { r[5], r[6] + verse - r[3] })
        end
    end
    if #out == 0 then out[1] = { chapter, verse } end
    return out
end

local function inverse(map, book)
    local cache = inverses[map]
    if not cache then cache = {}; inverses[map] = cache end
    if cache[book] then return cache[book] end
    local out = {}
    for c, size in pairs(map.verses[book] or map.native_sizes[book] or {}) do
        for v = 1, size do
            for _, to in ipairs(targets(map, book, c, v)) do
                local key = to[1] * 1000 + to[2]
                out[key] = out[key] or {}
                table.insert(out[key], { c, v })
            end
        end
    end
    for _, addresses in pairs(out) do
        table.sort(addresses, function(a,b) return a[1] < b[1] or (a[1] == b[1] and a[2] < b[2]) end)
    end
    cache[book] = out
    return out
end

local NATIVE = { ["en-dra"] = true, ["la-vulc"] = true, ["it-martini"] = true, ["de-allioli"] = true }

function Vulgate.read(source, edition, reading)
    local scheme = source:get("source/tridentine/versification")
    local out, seen = {}, {}
    for _, range in ipairs(reading.forms[1]) do
        local book = range.book:gsub("^book%.", "")
        local data = source:find(edition.dir .. "/" .. book)
        if not data then return nil end
        if not NATIVE[edition.id] and scheme.unmapped[book] then return nil end
        local fc,fv = range.from:match("^(%d+):(%d+)")
        local tc,tv = range.to:match("^(%d+):(%d+)")
        fc,fv,tc,tv = tonumber(fc),tonumber(fv),tonumber(tc),tonumber(tv)
        if not (fc and tc) or tc < fc or (tc == fc and tv < fv) then return nil end
        for c = fc, tc do
            local size = scheme.native_sizes[book] and scheme.native_sizes[book][c]
            if not size then return nil end
            local first, last = c == fc and fv or 1, c == tc and tv or size
            if last > size then return nil end
            for v = first, last do
                local addresses = { {c,v} }
                if not NATIVE[edition.id] then
                    addresses = {}
                    local original = inverse(scheme, book)[c * 1000 + v]
                    if not original then return nil end
                    for _, pair in ipairs(original) do
                        for _, target in ipairs(targets(edition.map, book, pair[1], pair[2])) do
                            table.insert(addresses, target)
                        end
                    end
                end
                for _, pair in ipairs(addresses) do
                    local key = book .. ":" .. pair[1] .. ":" .. pair[2]
                    local chapter = data[pair[1]]
                    if not chapter then return nil end
                    local text = chapter[pair[2]]
                    if text == nil then return nil end
                    if text ~= "" and not seen[key] then
                        table.insert(out, { chapter=c, verse=v, text=text })
                        seen[key] = true
                    end
                end
            end
        end
    end
    if #out == 0 then return nil end
    return { verses = out, attribution = edition.meta.attribution .. " Historical-Missal Vulgate numbering; complete containing verses where editions split or merge them differently." }
end

return Vulgate
