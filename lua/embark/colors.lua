local Utils = require("embark.utils")

local M = {}

---@class BaseColors
M.COLORS = {
    -- Space Colors:
    dark0       = "#100E23",
    dark1       = "#1E1C31",
    dark2       = "#2D2B40",
    dark3       = "#3E3859",
    dark4       = "#585273",

    -- Astral Colors:
    light0      = "#8A889D",
    light1      = "#CBE3E7",

    -- Nebula Colors:
    red0        = "#F02E6E",
    red1        = "#F48FB1",
    green0      = "#7FE9C3",
    green1      = "#A1EFD3",
    yellow0     = "#F2B482",
    yellow1     = "#FFE6B3",
    blue0       = "#78A8FF",
    blue1       = "#91DDFF",
    purple0     = "#7676FF",
    purple1     = "#D4BFFF",
    cyan0       = "#63F2F1",
    cyan1       = "#ABF8F7",
}

---@class ColorPalette : BaseColors
M.ALIASES = {
    fg          = M.COLORS.light1,
    bg          = M.COLORS.dark1,
    error       = M.COLORS.red1,
    warning     = M.COLORS.yellow1,
    critical    = M.COLORS.red0,
    info        = M.COLORS.blue0,
    hint        = M.COLORS.purple1,
    good        = M.COLORS.green1,
    bad         = M.COLORS.red1,
    border      = M.COLORS.light0,
    highlight   = M.COLORS.dark3,
    accent      = M.COLORS.yellow0,
    diff = {
        added = {
            fg = M.COLORS.green1,
            bg = Utils.blend(M.COLORS.green0, M.COLORS.dark0, 0.8)
        },
        changed = {
            fg = M.COLORS.yellow1,
            bg = Utils.blend(M.COLORS.yellow0, M.COLORS.dark0, 0.8)
        },
        deleted = {
            fg = M.COLORS.red1,
            bg = Utils.blend(M.COLORS.red0, M.COLORS.dark0, 0.8)
        },
        text = {
            fg = M.COLORS.blue1,
            bg = Utils.blend(M.COLORS.blue0, M.COLORS.dark0, 0.8)
        }
    }
}

function M.setup()
    ---@type ColorPalette
    return vim.tbl_extend("keep", M.COLORS, M.ALIASES)
end

return M
