local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        GitSignsAdd             = { fg = c.diff.added.fg },
        GitSignsChange          = { fg = c.diff.changed.fg },
        GitSignsDelete          = { fg = c.diff.deleted.fg },
    }
end

return M
