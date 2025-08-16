local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        NeogitBranch                = { fg = c.purple1 },
        NeogitBranchHead            = { fg = c.purple1, underline = true },
        NeogitRemote                = { fg = c.yellow1 },
        NeogitObjectId              = { fg = c.light0 },
        NeogitStash                 = { link = "Unknown" },
        NeogitFold                  = { bg = c.highlight },
        NeogitRebaseDone            = { fg = c.green1 },
        NeogitTagName               = { link = "Unknown" },
        NeogitTagDistance           = { link = "Unknown" },
        NeogitStatusHEAD            = { fg = c.cyan1 },
        NeogitSectionHeader         = { fg = c.blue1 },
        NeogitActiveItem            = { fg = c.dark0, bg = c.green1 },

        NeogitChangeModified        = { fg = c.yellow1 },
        NeogitChangeAdded           = { fg = c.green1 },
        NeogitChangeDeleted         = { fg = c.red1 },
        NeogitChangeRenamed         = { link = "NeogitChangeModified" },
        NeogitChangeUpdated         = { link = "NeogitChangeModified" },
        NeogitChangeCopied          = { link = "NeogitChangeAdded" },
        NeogitChangeNewFile         = { link = "NeogitChangeAdded" },
        NeogitChangeUnmerged        = { link = "NeogitChangeModified" },

        NeogitHunkHeader            = { fg = c.cyan1, bg = c.highlight },
        NeogitDiffContext           = { link = "Normal" },
        NeogitDiffAdd               = { link = "DiffAdd" },
        NeogitDiffDelete            = { link = "DiffDelete" },
        NeogitDiffHeader            = { fg = c.green1, bg = c.highlight },

        NeogitHunkHeaderHighlight   = { fg = c.dark0, bg = c.cyan1 },
        NeogitDiffContextHighlight  = { fg = c.fg, bg = c.dark2 },
        NeogitDiffAddHighlight      = { link = "NeogitDiffAdd" },
        NeogitDiffDeleteHighlight   = { link = "NeogitDiffDelete" },
        NeogitDiffHeaderHighlight   = { fg = c.dark0, bg = c.green1 },

        NeogitHunkHeaderCursor      = { fg = c.cyan1, bg = c.dark0 },
        NeogitDiffContextCursor     = { fg = c.fg, bg = c.dark0 },
        NeogitDiffAddCursor         = { fg = c.green1, bg = c.dark0 },
        NeogitDiffDeleteCursor      = { fg = c.red1, bg = c.dark0 },
        NeogitDiffHeaderCursor      = { fg = c.green1, bg = c.dark0 },

        NeogitFilePath              = { fg = c.purple1 },
        NeogitCommitViewHeader      = { fg = c.dark0, bg = c.cyan1 },

        NeogitGraphAuthor           = { fg = c.green1 },
        NeogitGraphBlack            = { fg = c.dark0 },
        NeogitGraphBoldBlack        = { fg = c.dark0, bold = true },
        NeogitGraphRed              = { fg = c.red1 },
        NeogitGraphBoldRed          = { fg = c.red1, bold = true },
        NeogitGraphGreen            = { fg = c.green1 },
        NeogitGraphBoldGreen        = { fg = c.green1, bold = true },
        NeogitGraphYellow           = { fg = c.yellow1 },
        NeogitGraphBoldYellow       = { fg = c.yellow1, bold = true },
        NeogitGraphBlue             = { fg = c.blue1 },
        NeogitGraphBoldBlue         = { fg = c.blue1, bold = true },
        NeogitGraphPurple           = { fg = c.purple1 },
        NeogitGraphBoldPurple       = { fg = c.purple1, bold = true },
        NeogitGraphCyan             = { fg = c.cyan1 },
        NeogitGraphBoldCyan         = { fg = c.cyan1, bold = true },
        NeogitGraphWhite            = { fg = c.light1 },
        NeogitGraphBoldWhite        = { fg = c.light1, bold = true },
        NeogitGraphGray             = { fg = c.light1 },
        NeogitGraphBoldGray         = { fg = c.light0, bold = true },
        NeogitGraphOrange           = { fg = c.yellow0 },
        NeogitGraphBoldOrange       = { fg = c.yellow0, bold = true },
    }
end

return M
