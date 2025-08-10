local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        TelescopeNormal             = { fg = c.fg, bg = c.bg },
        TelescopeSelection          = { bg = c.highlight },
        TelescopeBorder             = { fg = c.light0 },
        TelescopePromptCounter      = { fg = c.light0 },
        TelescopeMatching           = { fg = c.purple1 },
        TelescopePromptPrefix       = { fg = c.light0 },
    }
end

return M
