local M = {}

-- Loads the colorscheme
function M.load(_)
    local colors = require("embark.colors").setup()
    local groups = require("embark.groups").setup(colors)

    if vim.g.colors_name then
        vim.cmd([[hi clear]])
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "embark"

    for group, hl in pairs(groups) do
        hl = type(hl) == "string" and { link = hl } or hl
        vim.api.nvim_set_hl(0, group, hl)
    end
end

return M
