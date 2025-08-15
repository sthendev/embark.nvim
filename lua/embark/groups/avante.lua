local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        AvanteTitle                         = { fg = c.dark0, bg = c.green1 },
        AvanteReversedTitle                 = { fg = c.green1, bg = c.dark1 },
        AvanteSubtitle                      = { fg = c.dark0, bg = c.cyan1 },
        AvanteReversedSubtitle              = { fg = c.cyan1, bg = c.dark0 },
        AvanteThirdTitle                    = { fg = c.dark0, bg = c.purple1 },
        AvanteReversedThirdTitle            = { fg = c.purple1, bg = c.dark0 },
        AvanteSuggestion                    = { link = "Comment" },
        AvanteAnnotation                    = { link = "Comment" },
        AvantePopupHint                     = { link = "FloatBorder" },
        AvanteInlineHint                    = { link = "Comment" },
        AvanteConfirmTitle                  = { fg = c.dark0, bg = c.yellow0 },
        AvanteButtonDefault                 = { fg = c.dark0, bg = c.light0 },
        AvanteButtonDefaultHover            = { fg = c.dark0, bg = c.green0 },
        AvanteButtonPrimary                 = { link = "AvanteButtonDefault" },
        AvanteButtonPrimaryHover            = { fg = c.dark0, bg = c.blue0 },
        AvanteButtonDanger                  = { fg = c.dark0, bg = c.light0 },
        AvanteButtonDangerHover             = { fg = c.dark0, bg = c.red0 },
        AvantePromptInput                   = { link = "Unknown"},
        AvantePromptInputBorder             = { link = "FloatBorder" },
        AvanteSidebarWinSeparator           = { link = "WinSeparator" },
        AvanteSidebarWinHorizontalSeparator = { link = "WinSeparator" },
        AvanteSidebarNormal                 = { fg = c.fg, bg = c.bg },
        AvanteCommentFg                     = { link = "Comment" },
        AvanteReversedNormal                = { fg = c.bg, bg = c.fg },
        AvanteStateSpinnerGenerating        = { fg = c.dark0, bg = c.yellow1 },
        AvanteStateSpinnerToolCalling       = { fg = c.dark0, bg = c.cyan1 },
        AvanteStateSpinnerFailed            = { fg = c.dark0, bg = c.red1 },
        AvanteStateSpinnerSucceeded         = { fg = c.dark0, bg = c.green1 },
        AvanteStateSpinnerSearching         = { fg = c.dark0, bg = c.info },
        AvanteStateSpinnerThinking          = { fg = c.dark0, bg = c.info },
        AvanteStateSpinnerCompacting        = { fg = c.dark0, bg = c.info },
        AvanteTaskRunning                   = { fg = c.purple1 },
        AvanteTaskCompleted                 = { fg = c.green1 },
        AvanteTaskFailed                    = { fg = c.red1 },
        AvanteThinking                      = { fg = c.info },
        -- TODO: conflict resolution highlights
        -- AvanteConflictCurrent
        -- AvanteConflictCurrentLabel
        -- AvanteConlictIncoming
        -- AvanteConflictIncomingLabel
    }
end

return M
