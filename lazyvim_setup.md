 ### Setup lazyvim

mason
- emmet-language-server
- eslint-lsp
- eslint_d
- json-lsp
- lua-language-server
- prettierd
- shfmt
- stylua
- typescript-language-server

lua/config/lazy.lua
`{ import = "lazyvim.plugins.extras.linting.eslint" }

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("t", "<C-j>", "<CR>")

lua/plugins/conform.lua

```lua
return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      ["javascript"] = { "prettier" },
      ["javascriptreact"] = { "prettier" },
      ["typescript"] = { "prettier" },
      ["typescriptreact"] = { "prettier" },
      ["vue"] = { "prettier" },
      ["css"] = { "prettier" },
      ["scss"] = { "prettier" },
      ["less"] = { "prettier" },
      ["html"] = { "prettierd" },
      ["json"] = { "prettier" },
      ["jsonc"] = { "prettier" },
      ["yaml"] = { "prettier" },
      ["markdown"] = { "prettier" },
      ["markdown.mdx"] = { "prettier" },
      ["graphql"] = { "prettier" },
      ["handlebars"] = { "prettier" },
    },
  },
}
```
{ "akinsho/toggleterm.nvim", version = "*", config = true }
- [ ] 
onedark

---------------------

TSInstall pug

---------------------