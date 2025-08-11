local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        DapUINormal                     = { link = "Normal" },
        DapUIVariable                   = { link = "Identifier" },
        DapUIScope                      = { fg = c.green1 },
        DapUIType                       = { link = "Type" },
        DapUIValue                      = { link = "Normal" },
        DapUIModifiedValue              = { fg = c.yellow0 },
        DapUIDecoration                 = { fg = c.cyan1 },
        DapUIThread                     = { fg = c.blue1 },
        DapUIStoppedThread              = { fg = c.red1 },
        DapUIFrameName                  = { link = "Normal" },
        DapUISource                     = { fg = c.green1 },
        DapUILineNumber                 = { fg = c.light0 },
        DapUIFloatNormal                = { link = "NormalFloat" },
        DapUIFloatBorder                = { link = "FloatBorder" },
        DapUIWatchesEmpty               = { fg = c.light0 },
        DapUIWatchesValue               = { fg = c.cyan1 },
        DapUIWatchesErrror              = { link = "Error" },
        DapUIBreakpointsPath            = { fg = c.green1 },
        DapUIBreakpointsInfo            = { fg = c.info },
        DapUIBreakpointsCurrentLine     = { link = "Unknown" },
        DapUIBreakpointsDisabledLine    = { link = "Unknown" },
        DapUICurrentFrameName           = { bg = c.highlight },
        DapUIStepOver                   = { fg = c.blue1 },
        DapUIStepInto                   = { fg = c.blue1 },
        DapUIStepBack                   = { fg = c.blue1 },
        DapUIStepOut                    = { fg = c.blue1 },
        DapUIStop                       = { fg = c.red1 },
        DapUIPlayPause                  = { fg = c.green1 },
        DapUIRestart                    = { fg = c.yellow0 },
        DapUIUnavailable                = { link = "Error" },
        DapUIWinSelect                  = { link = "Unknown" },
        DapUIEndOfBuffer                = { link = "EndOfBuffer" },
    }
end

return M
