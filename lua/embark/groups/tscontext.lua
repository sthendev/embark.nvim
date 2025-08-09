local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        TreesitterContext           = { bg = c.dark0 },
    }
end

return M
