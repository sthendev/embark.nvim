# $\huge{\color{#F48FB1}\textsf{E}\color{#A1EFD3}\textsf{M}\color{#FFE6B3}\textsf{B}\color{#91DDFF}\textsf{A}\color{#D4BFFF}\textsf{R}\color{#ABF8F7}\textsf{K}\color{#FFFFFF}\textsf{.NVIM}}$
This is my lua port of [embark.vim](https://github.com/embark-theme/vim). Highlights are not 100% identical to the original but attempted to maintain the spirit of the theme. It will be missing support for plugins that I don't use but contributions are welcome.

## Screenshot:
<img width="1469" height="886" alt="image" src="https://github.com/user-attachments/assets/035e1161-5686-45e1-9e95-56227fb8208c" />

## Supported Plugins:
- treesitter
- lsp
- avante.nvim
- gitsigns.nvim
- neogit
- nvim-dap-ui
- nvim-treesitter-context
- telescope.nvim

## Getting Started:

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

## Contributing:
Adding support for new plugins is straightforward. Simply add a new lua file for the plugin in `lua/embark/groups/` and add a mapping from plugin name to file name in `lua/embark/groups/init.lua`.

## Acknowledgements:
- [embark.vim](https://github.com/embark-theme/vim): The original colorscheme I have used and loved for years.
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim): Heavily inspired the code structure for this project.
