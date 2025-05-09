```lua
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}

}
local opts = {}

require("lazy").setup(plugins, opts)

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "javascript"},
  highlight = { enable = true },
  indent = {enable = true },
})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
```

` lua/config/options.lua `

```lua
local opt = vim.opt

-- Tab / Indentetion
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
```

`lua.config/mappings.lua`

```lua
vim.keymap.set('i', 'jj', '<Esc>')
```


- :LazyFormatInfo
- :Telescope jumplist

