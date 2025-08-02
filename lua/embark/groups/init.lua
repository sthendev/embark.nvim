local M = {}

M.groups = {
    ["base"] = true,
    ["kinds"] = true,
    ["semantic"] = true,
    ["treesitter"] = true,
}

M.plugins = {}

function M.get(name, colors)
    return require("embark.groups." .. name).get(colors)
end

function M.setup(colors)
    if package.loaded.lazy then
        local plugins = require("lazy.core.config").plugins
        for plugin, group in pairs(M.plugins) do
            if plugins[plugin] then
                M.groups[group] = true
            end
        end
    end

    local output = {}

    for group in pairs(M.groups) do
        for k, v in pairs(M.get(group, colors)) do
            output[k] = v
        end
    end

    return output
end

return M
