local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        TelescopeNormal             = { link = "NormalFloat" },
        TelescopeSelection          = { link = "Visual" },
        TelescopeBorder             = { link = "FloatBorder" },
        TelescopePromptCounter      = { fg = c.light0 },
        TelescopeMatching           = { fg = c.purple1 },
        TelescopePromptPrefix       = { fg = c.purple1 },
    }
end

return M
