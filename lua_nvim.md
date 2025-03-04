```lua
vim.cmd("colorscheme habamax")
vim.cmd([[colorscheme habamax]])
vim.cmd.colorscheme("habamax")

vim.cmd([[
  highlight Error guibg=red
  highlight link Warning Error
]])
vim.cmd.highlight({ "Error", "guibg=red" })
vim.cmd.highlight({ "link", "Warning", "Error" })
```

- vim.g: global variables (g:)
- vim.b: variables for the current buffer (b:)
- vim.w: variables for the current window (w:)
- vim.t: variables for the current tabpage (t:)
- vim.v: predefined Vim variables (v:)
- vim.env: environment variables defined in the editor session

- vim.opt: behaves like :set
- vim.opt_global: behaves like :setglobal
- vim.opt_local: behaves like :setlocal

```lua
set wildignore=*.o,*.a,__pycache__
vim.o.wildignore = '*.o,*.a,__pycache__'
vim.opt.wildignore = { '*.o', '*.a', '__pycache__' }
```

To replicate the behavior of :set+=, use:
`vim.opt.wildignore:append { "*.pyc", "node_modules" }

- vim.o: behaves like :set
- vim.go: behaves like :setglobal
- vim.bo: for buffer-scoped options
- vim.wo: for window-scoped options (can be double indexed)

-- Normal mode mapping for Vim command
vim.keymap.set('n', '<Leader>ex1', '<cmd>echo "Example 1"<cr>')
-- Normal and Command-line mode mapping for Vim command
vim.keymap.set({'n', 'c'}, '<Leader>ex2', '<cmd>echo "Example 2"<cr>')
-- Normal mode mapping for Lua function
vim.keymap.set('n', '<Leader>ex3', vim.treesitter.start)
-- Normal mode mapping for Lua function with arguments
vim.keymap.set('n', '<Leader>ex4', function() print('Example 4') end)

```lua
Once you have a language server installed it's a good idea 
to check if Neovim "knows" where it is. 
You can execute this command inside Neovim.

echo exepath('intelephense')
```

```lua
:call mkdir('./ftplugin', 'p')
```
-------------------------

:help stdpath()
echo stdpath("config")

vim.opt.ignorecase = true

```lua
config = function()
	require("nvim-surround").setup{
	
	}
end

instead of this

opts = {}
```
treesitter insted of
ensure_installed = {"lua", "vim"}
write this 
auto_install = true