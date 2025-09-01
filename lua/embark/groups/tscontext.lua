local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        TreesitterContext           = { link = "Visual" },
    }
end

return M
