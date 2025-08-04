local Utils = require("embark.utils")

local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        Comment             = { fg = c.light0 },
        Constant            = { fg = c.purple1 },
        String              = { fg = c.yellow1 },
        Character           = { link = "String" },
        Number              = { fg = c.yellow0 },
        Boolean             = { fg = c.yellow0 },
        Float               = { link = "Number" },

        Identifier          = { fg = Utils.blend(c.cyan1, c.light1, 0.9) },
        Function            = { fg = c.red1 },

        Statement           = { fg = c.green1 },
        Conditional         = { link = "Statement" },
        Repeat              = { link = "Statement" },
        Label               = { link = "Statement" },
        Operator            = { fg = c.cyan0 },
        Keyword             = { link = "Statement" },
        Exception           = { link = "Keyword" },

        PreProc             = { link = "Statement" },
        Include             = { link = "PreProc" },
        Define              = { link = "PreProc" },
        Macro               = { link = "PreProc" },
        PreCondit           = { link = "PreProc" },

        Type                = { fg = c.purple1 },
        StorageClass        = { link = "Keyword" },
        Structure           = { link = "Keyword" },
        Typedef             = { link = "Keyword" },

        Special             = { fg = c.blue1 },
        SpecialChar         = { fg = c.green0 },
        Tag                 = { fg = c.cyan1 },
        Delimiter           = { link = "Normal" },
        SpecialComment      = { link = "Statement" },
        Debug               = { link = "Unknown" },

        Underlined          = { underline = true },
        Ignore              = { fg = c.bg },
        Error               = { fg = c.error },
        Todo                = { fg = c.yellow0 },

        Added               = { link = "DiffAdd" },
        Changed             = { link = "DiffChange" },
        Removed             = { link = "DiffDelete" },
    }
end

-- TODO: fixme

return M
