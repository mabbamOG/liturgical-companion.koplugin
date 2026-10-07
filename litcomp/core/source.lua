--[[
Reads the curated source data (source/) and translation tables (i18n/).

Each data file is a Lua chunk returning a table. It runs in an empty
environment, so it can hold data only, and is read once per Source.
]]

local Source = {}
Source.__index = Source

function Source.new(root)
    return setmetatable({ root = root, cache = {} }, Source)
end

local function load_data(path)
    local chunk, err = loadfile(path)
    if not chunk then return nil, err end
    setfenv(chunk, {})
    local ok, value = pcall(chunk)
    if not ok then return nil, path .. ": " .. tostring(value) end
    if type(value) ~= "table" then return nil, path .. ": does not return a table" end
    return value
end

--- The table in <root>/<relative>.lua; raises when it is missing or invalid.
function Source:get(relative)
    local value = self.cache[relative]
    if value == nil then
        local err
        value, err = load_data(string.format("%s/%s.lua", self.root, relative))
        if not value then error(err, 2) end
        self.cache[relative] = value
    end
    return value
end

--- Like get, but nil (not an error) when the file does not exist.
function Source:find(relative)
    local path = string.format("%s/%s.lua", self.root, relative)
    local file = io.open(path, "r")
    if not file then return nil end
    file:close()
    return self:get(relative)
end

return Source
