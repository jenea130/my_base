local options = {
  formatters_by_ft = {
    bash = { "beautysh" },
    lua = { "stylua" },
    css = { "prettier", "prettierd", stop_after_first = true },
    html = { "prettier" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettier" },
    json = { "prettier" },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
