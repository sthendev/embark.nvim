local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        ["@variable"]                       = { link = "Normal" },
        ["@variable.builtin"]               = { link = "Tag" },
        ["@variable.parameter"]             = { link = "@variable" },
        ["@variable.parameter.builtin"]     = { link = "@variable" },

        ["@constant"]                       = { link = "Constant" },
        ["@constant.builtin"]               = { link = "Tag" },
        ["@constant.macro"]                 = { link = "@constant" },

        ["@module"]                         = { link = "Directory" },
        ["@module.builtin"]                 = { link = "Special" },
        ["@label"]                          = { link = "Statement" },

        ["@string"]                         = { link = "String" },
        ["@string.documentation"]           = { link = "@string" },
        ["@string.regexp"]                  = { link = "@string" },
        ["@string.escape"]                  = { link = "SpecialChar" },
        ["@string.special"]                 = { link = "@string" },
        ["@string.special.symbobl"]         = { link = "@string" },
        ["@string.special.path"]            = { link = "@string" },
        ["@string.special.url"]             = { link = "@string" },

        ["@character"]                      = { link = "@string" },
        ["@character.special"]              = { link = "@string" },

        ["@boolean"]                        = { link = "Boolean" },
        ["@number"]                         = { link = "Number" },
        ["@number.float"]                   = { link = "Float" },

        ["@type"]                           = { link = "Type" },
        ["@type.builtin"]                   = { link = "@type" },
        ["@type.definition"]                = { link = "@type" },

        ["@attribute"]                      = { link = "Statement"},
        ["@attribute.builtin"]              = { link = "Statement"},
        ["@property"]                       = { link = "Identifier"},

        ["@function"]                       = { link = "Function" },
        ["@function.builtin"]               = { link = "Tag" },
        ["@function.call"]                  = { link = "Special" },
        ["@function.macro"]                 = { link = "Statement" },
        ["@function.method"]                = { link = "@function" },
        ["@function.method.call"]           = { link = "@function" },

        ["@constructor"]                    = { link = "Constant"},
        ["@operator"]                       = { link = "Operator" },

        ["@keyword"]                        = { link = "Statement" },
        ["@keyword.coroutine"]              = { link = "Statement" },
        ["@keyword.function"]               = { link = "Statement" },
        ["@keyword.operator"]               = { link = "Statement" },
        ["@keyword.import"]                 = { link = "Statement" },
        ["@keyword.type"]                   = { link = "Statement" },
        ["@keyword.modifier"]               = { link = "Statement" },
        ["@keyword.repeat"]                 = { link = "Statement" },
        ["@keyword.return"]                 = { link = "Statement" },
        ["@keyword.debug"]                  = { link = "Statement" },
        ["@keyword.exception"]              = { link = "Statement" },
        ["@keyword.conditional"]            = { link = "Statement" },
        ["@keyword.conditional.ternary"]    = { link = "Operator" },
        ["@keyword.directive"]              = { link = "Statement" },
        ["@keyword.directive.define"]       = { link = "Statement" },

        ["@punctuation.delimiter"]          = { link = "Delimiter" },
        ["@punctuation.bracket"]            = { link = "@punctuation.delimiter" },
        ["@punctuation.special"]            = { link = "Constant" },

        ["@comment"]                        = { link = "Comment" },
        ["@comment.documentation"]          = { link = "Comment" },
        ["@comment.error"]                  = { link = "Todo" },
        ["@comment.warning"]                = { link = "Todo" },
        ["@comment.todo"]                   = { link = "Todo" },
        ["@comment.note"]                   = { link = "Todo" },

        ["@markup.strong"]                  = { bold = true },
        ["@markup.italic"]                  = { italic = true },
        ["@markup.strikethrough"]           = { strikethrough = true },
        ["@markup.underline"]               = { underline = true },
        ["@markup.heading"]                 = { link = "Title" },
        ["@markup.quote"]                   = { link = "Tag" },
        ["@markup.math"]                    = { link = "Statement" },
        ["@markup.link"]                    = { link = "Statement" },
        ["@markup.link.label"]              = { link = "@markup.link" },
        ["@markup.link.url"]                = { link = "@markup.link" },
        ["@markup.raw"]                     = { link = "Tag" },
        ["@markup.raw.block"]               = { link = "@markup.raw" },
        ["@markup.list"]                    = { link = "Constant" },
        ["@markup.list.checked"]            = { fg = c.good },
        ["@markup.link.unchecked"]          = { fg = c.changed },

        ["@diff.plus"]                      = { link = "DiffAdd" },
        ["@diff.minus"]                     = { link = "DiffDelete" },
        ["@diff.delta"]                     = { link = "DiffChange" },

        ["@tag"]                            = { link = "Statement" },
        ["@tag.builtin"]                    = { link = "@tag" },
        ["@tag.attribute"]                  = { link = "Tag" },
        ["@tag.delimiter"]                  = { link = "@punctuation.delimiter" },
    }
end

return M
