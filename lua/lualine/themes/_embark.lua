local M = {}

---@type LualineThemeFn
function M.get(c)
    ---@type LualineTheme
    return {
        normal = {
            a = { bg = c.green1, fg = c.dark0 },
            b = { bg = c.dark2 },
            c = { bg = c.dark0 },
            x = { bg = c.dark0, fg = c.light0 },
        },
        insert = {
            a = { bg = c.yellow1, fg = c.dark0 },
        },
        command = {
            a = { bg = c.blue1, fg = c.dark0 },
        },
        visual = {
            a = { bg = c.purple1, fg = c.dark0 },
        },
        replace = {
            a = { bg = c.red1, fg = c.dark0 },
        },
        terminal = {
            a = { bg = c.cyan1, fg = c.dark0 },
        },
        inactive = {
            a = { bg = c.dark0, fg = c.light0 },
            b = { bg = c.dark0, fg = c.light0 },
            c = { bg = c.dark0, fg = c.light0 },
            x = { bg = c.dark0, fg = c.light0 },
            y = { bg = c.dark0, fg = c.light0 },
            z = { bg = c.dark0, fg = c.light0 },
        }
    }
end

return M
