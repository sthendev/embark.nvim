# embark.nvim
This is my lua port of embark.vim. Highlights are not identical to the original and it will be missing support for plugins that I don't use (contributions are welcome).

## Supported Plugins
- avante.nvim
- gitsigns.nvim
- neogit
- nvim-dap-ui
- nvim-treesitter-context
- telescope.nvim

## Getting Started

### lazy.nvim
```lua
{
    "sthendev/embark.nvim",
    name = "embark",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd([[ colorscheme embark ]])
    end
}
```

## Acknowledgements
- [embark.vim|https://github.com/embark-theme/vim]: The original theme I have used and loved for years.
- [tokyonight.nvim|https://github.com/folke/tokyonight.nvim]: Heavily inspired the code structure for this project.
