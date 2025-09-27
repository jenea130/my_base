-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chadracula",

  theme_toggle = { "onedark", "wombat" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default",
  },

  telescope = { style = "borderless" },

  statusline = {
    theme = "default",
    separator_style = "default",
  },
}

M.term = {
  winopts = { number = false, relativenumber = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.25,
    width = 0.5,
    height = 0.4,
    border = "single",
  },
}

M.lsp = { signature = true }

M.cheatsheet = {
  theme = "grid",
  excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" },
}

M.mason = {
  cmd = true,
  pkgs = {},
}

return M
