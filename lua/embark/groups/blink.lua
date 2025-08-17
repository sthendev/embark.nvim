local M = {}

---@type HighlightsFn
function M.get(_)
    return require("embark.groups.kinds").kinds("BlinkCmpKind%s")
end

return M
