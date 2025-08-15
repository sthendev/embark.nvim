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
        TelescopePreviewTitle       = { fg = c.dark0,   bg = c.purple1 },
        TelescopePromptTitle        = { fg = c.dark0,   bg = c.green1 },
        TelescopeResultsTitle       = { fg = c.dark0,   bg = c.blue1 },
    }
end

return M
