local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        GitSignsAdd             = { fg = c.added },
        GitSignsChange          = { fg = c.changed },
        GitSignsDelete          = { fg = c.deleted },
    }
end

return M
