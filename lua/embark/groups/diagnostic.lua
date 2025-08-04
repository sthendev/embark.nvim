local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        DiagnosticError             = { fg = c.error },
        DiagnosticWarn              = { fg = c.warning },
        DiagnosticInfo              = { fg = c.info },
        DiagnosticHInt              = { fg = c.hint },
        DiagnosticOk                = { fg = c.good },
    }
end

return M
