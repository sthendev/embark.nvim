local Utils = require("embark.utils")

local M = {}

---@type HighlightsFn
function M.get(c)
    ---@type Highlights
    return {
        Unknown             = { fg = c.red0, bg = c.red1 },
            -- custom placeholder for undecided highlights
        ColorColumn         = { bg = c.dark0 },
            -- used for columns set with colorcolumn
        Conceal             = { link = "Normal" },
            -- placeholder characters substituted for concealed text
        CurSearch           = { link = "IncSearch" },
            -- current match for last search pattern
        Cursor              = { reverse = true  },
            -- character under the cursor
        CursorColumn        = { bg = c.highlight },
            -- screen-column at the cursor when cursorcolumn=true
        CursorLine          = { bg = c.highlight },
            -- screen-line at the cursor when cursorline=true
        Directory           = { fg = c.purple1 },
            -- directory names
        DiffAdd             = { bg = Utils.blend(c.addedbg, c.dark0, 0.7) },
            -- diff mode: added line
        DiffChange          = { bg = Utils.blend(c.changedbg, c.dark0, 0.7) },
            -- diff mode: changed line
        DiffDelete          = { bg = Utils.blend(c.deletedbg, c.dark0, 0.7) },
            -- diff mode: deleted line
        DiffText            = { bg = c.info },
            -- diff mode: changed text within changed line
        EndOfBuffer         = { link = "LineNrBelow" },
            -- filler lines (~) after the last line in the buffer
        TermCursor          = { reverse = true },
            -- cursor in a focused terminal
        ErrorMsg            = { fg = c.error },
            -- error messages on the command line
        WarningMsg          = { fg = c.warning },
            -- warning messages
        WinSeparator        = { fg = c.dark4, bold = true },
            -- separators between window splits
        Folded              = { fg = c.info, bg = c.highlight },
            -- line used for closed folds
        FoldColumn          = { fg = c.info },
            -- 'foldcolumn'
        SignColumn          = { fg = c.accent },
            -- column where signs are displayed
        IncSearch           = { fg = c.dark0, bg = c.accent },
            -- 'incsearch' highlighting
        Substitute          = { link = "Search" },
            -- :substitute replacement text highlighting
        LineNr              = { fg = c.light0, bold = true },
            -- line number for :number, :# commands and for relativenumber=true
        LineNrAbove         = { fg = c.dark4 },
            -- line numbers above cursor line when relativenumber=true
        LineNrBelow         = { link = "LineNrAbove" },
            -- line numbers below curosr line for when relativenumber=true
        CursorLineNr        = { bg = c.highlight },
            -- line number for cursorline=true and cursorlineopt in ('number','both')
        CursorLineFold      = { bg = c.highlight },
            -- fold column for cursor line
        CursorLineSign      = { bg = c.highlight },
            -- sign column for cursor line
        MatchParen          = { fg = c.purple1, bg = c.highlight },
            -- character under the cursor or just before it if it is a paired bracket and it's match
        ModeMsg             = { fg = c.light0, bold = true },
            -- showmode message (e.g. '-- INSERT --')
        MsgArea             = { link = "Normal" },
            -- area for messages and command-line
        MsgSeparator        = { bg = c.dark0 },
            -- separator for scrolled messages
        MoreMsg             = { fg = c.info },
            -- more-prompt
        NonText             = { fg = c.dark4 },
            -- '@' at the end of the window, characters from showbreak and other characters that do not really exist in the text
            -- (e.g. '>' displayed when a double-wide character doesn't fit at the end of the line)
        Normal              = { fg = c.light1, bg = c.dark1 },
            -- normal text
        NormalFloat         = { link = "Normal" },
            -- normal text in floating windows
        FloatBorder         = { fg = c.border },
            -- border of floating windows
        FloatTitle          = { link = "NormalFloat" },
            -- title of floating windows
        FloatFooter         = { link = "NormalFloat" },
            -- footer of floating windows
        NormalNC            = { link = "Normal" },
            -- normal text in non-current windows
        Pmenu               = { bg = c.highlight },
            -- popup menu: normal item
        PmenuSel            = { fg = c.purple1, bg = c.dark0 },
            -- popup menu: selected item
        PmenuKind           = { link = "Pmenu" },
            -- popup menu: normal item 'kind'
        PmenuKindSel        = { link = "PmenuSel" },
            -- popup menu: selected item 'kind'
        PmenuExtra          = { link = "Pmenu" },
            -- popup menu: normal item 'extra text'
        PmenuExtraSel       = { link = "PmenuSel" },
            -- popup menu: selected itme 'extra text'
        PmenuSbar           = { bg = c.dark0 },
            -- popup menu: scrollbar
        PmenuThumb          = { bg = c.accent },
            -- popup menu: thumb of scrollbar
        PmenuMatch          = { link = "Unknown" },
            -- popup menu: matched text in normal item
        PmenuMatchSel       = { link = "Unknown" },
            -- popup menu: match text in selected item
        CompMatchIns        = { link = "Unknown" },
            -- matched text of the currently inserted completion
        Question            = { fg = c.info },
            -- hit-enter prompt and yes/no questions
        QuickFixLine        = { fg = c.purple1 },
            -- current quickfix item in the quickfix window
        Search              = { fg = c.dark0, bg = c.yellow1 },
            -- last search pattern highlighting
        SnippetTabstop      = { bg = c.highlight },
            -- tabstops in snippets
        SpecialKey          = { fg = c.cyan0 },
            -- unprintable characters: text displayed differently from what it really is
        SpellBad            = { fg = c.error, underline = true },
            -- word that is not recognized by the spellchecker
        SpellCap            = { fg = c.info, underline = true },
            -- word that should start with a capital
        SpellLocal          = { fg = c.warning, underline = true },
            -- word that is recognized by the spellchecker as one that is used in another region
        SpellRare           = { fg = c.critical, underline = true },
            -- word that is recognized by the spellchecker as one that is hardly every used
        StatusLine          = { bg = c.dark0 },
            -- status line of the current window
        StatusLineNC        = { fg = c.light0, bg = c.dark3 },
            -- status lines of non-current windows
        StatusLineTerm      = { link = "StatusLine" },
            -- status line of terminal window
        StatusLineTermNC    = { link = "StatusLineNC" },
            -- status lines of non-current terminal windows
        TabLine             = { fg = c.light0, bg = c.dark0 },
            -- tab pages line, not active tab page label
        TabLineFill         = { bg = c.dark0 },
            -- tabe pages line, where there are no labels
        TabLineSel          = { bg = c.dark3 },
            -- tab pages line, active tabe page label
        Title               = { fg = c.info },
            -- titles for output from ':set all', ':autocmd' etc.
        Visual              = { bg = c.highlight },
            -- visual mode selection
        VisualNOS           = { link = "Visual" },
            -- visual mode selection when vim is 'not owning the selection'
        Whitespace          = { fg = c.dark4 },
            -- 'nbsp', 'space', 'tab', 'multispace', 'lead' and 'trail' in listchars
        WildMenu            = { link = "PmenuSel" },
            -- current match in wildmenu completion
        WinBar              = { link = "StatusLine" },
            -- window bar of the current window
        WinBarNC            = { link = "StatusLineNC" },
            -- window bar of non-current windows
    }
end

return M
