--[[
Lets require() find modules under the plugin folder by namespace, without
adding the folder to package.path: KOReader restores package.path after
loading a plugin, and other modules must not be shadowed.

    dofile(plugin_dir .. "/litcomp/loader.lua").install(plugin_dir)                 -- litcomp.*
    dofile(plugin_dir .. "/litcomp/loader.lua").install(plugin_dir, { "koreader" })  -- also koreader.*
]]

local Loader = {}

local installed = {}

local function in_namespace(name, namespaces)
    for _i, namespace in ipairs(namespaces) do
        if name == namespace or name:sub(1, #namespace + 1) == namespace .. "." then return true end
    end
    return false
end

function Loader.install(root, extra)
    local namespaces = { "litcomp" }
    for _i, namespace in ipairs(extra or {}) do table.insert(namespaces, namespace) end
    local key = root .. "|" .. table.concat(namespaces, ",")
    if installed[key] then return end
    installed[key] = true
    local searchers = package.loaders or package.searchers
    table.insert(searchers, 2, function(name)
        if not in_namespace(name, namespaces) then return nil end
        local path = root .. "/" .. name:gsub("%.", "/") .. ".lua"
        local chunk, err = loadfile(path)
        if not chunk then
            return "\n\tno file '" .. path .. "'" .. ((err and not err:find("No such file")) and (": " .. err) or "")
        end
        return chunk
    end)
end

return Loader
