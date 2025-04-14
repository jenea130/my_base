local lint = require "lint"

lint.linters_by_ft = {
  lua = { "luacheck" },
  -- javascript = { "eslind_d" },
  -- typescript = { "eslind_d" },
  -- javascriptreact = { "eslind_d" },
  -- typescriptreact = { "eslind_d" },
  -- markdown = { "vale" },
}

lint.linters.luacheck.args = {
  "--globals",
  "love",
  "vim",
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  callback = function()
    lint.try_lint()
  end,
})
