local M = {}

M.groups = {
    ["editor"] = true,
    ["syntax"] = true,
    ["diagnostic"] = true,
    ["treesitter"] = true,
    ["lsp"] = true,
}

M.plugins = {
    ["gitsigns.nvim"]           = "gitsigns",
    ["neogit"]                  = "neogit",
    ["nvim-dap-ui"]             = "dapui",
    ["nvim-treesitter-context"] = "tscontext",
    ["telescope.nvim"]          = "telescope",
}

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

    local installed = require("lazy.core.config").plugins
    for plugin, group in pairs(M.plugins) do
        if installed[plugin] then
            M.groups[group] = true
        end
    end

    for group in pairs(M.groups) do
        for k, v in pairs(M.get(group, colors)) do
            output[k] = v
        end
    end

    return output
end

return M
