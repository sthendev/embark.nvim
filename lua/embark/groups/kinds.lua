local M = {}

local kinds = {
  Class           = "@type",
  Color           = "Special",
  Constant        = "@constant",
  Constructor     = "@type",
  Enum            = "@type",
  EnumMember      = "@type",
  Event           = "Special",
  Field           = "@property",
  File            = "Normal",
  Folder          = "Directory",
  Function        = "@function",
  Interface       = "@type",
  Keyword         = "@keyword",
  Method          = "@function.method",
  Module          = "@module",
  Operator        = "@operator",
  Property        = "@property",
  Reference       = "@markup.link",
  Snippet         = "Conceal",
  Struct          = "@type",
  Text            = "Normal",
  TypeParameter   = "@variable.parameter",
  Unit            = "@type",
  Value           = "@number",
  Variable        = "@variable",
}

function M.kinds(pattern)
    local result = {}
    for kind, link in pairs(kinds) do
        result[pattern:format(kind)] = { link = link }
    end
    return result
end

---@type HighlightsFn
function M.get(_)
    return M.kinds("LspKind%s")
end

return M
