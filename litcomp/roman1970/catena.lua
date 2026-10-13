--[[
The Catena Aurea chain for a Mass's Gospel (source/catena.lua): the authors
Thomas Aquinas quotes on the passage, from the longer chain on Sundays,
solemnities and the Triduum and the shorter one on other days.
]]

local Citation = require("litcomp.core.citation")

local Catena = {}
Catena.__index = Catena

local SOLEMN_RANKS = { sunday = true, solemnity = true, triduum = true }

function Catena.new(source)
    return setmetatable({ passages = source:get("source/catena").passages }, Catena)
end

--- { authors = { "<author id>", ... }, segments = n, chain = "solemn" | "weekday",
--- passages = { "<Gospel citation>", ... } } for a Mass, or nil.
--- rank: the rank of the Mass's celebration (nil for a vigil: solemn).
function Catena:for_mass(readings, rank)
    local chain = (rank == nil or SOLEMN_RANKS[rank]) and "solemn" or "weekday"
    local authors, seen, segments, found, keys = {}, {}, 0, false, {}
    for _i, reading in ipairs(readings or {}) do
        if reading.slot == "gospel" then
            for _j, ranges in ipairs(reading.forms) do
                for _k, range in ipairs(ranges) do
                    local key = Citation.format({ { range } })
                    local passage = self.passages[key]
                    local part = passage and passage[chain]
                    if part then
                        found = true
                        table.insert(keys, key)
                        segments = segments + part.segments
                        for _l, author in ipairs(part.authors) do
                            if not seen[author] then
                                seen[author] = true
                                table.insert(authors, author)
                            end
                        end
                    end
                end
            end
        end
    end
    if not found then return nil end
    return { authors = authors, segments = segments, chain = chain, passages = keys }
end

return Catena
