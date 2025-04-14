require "nvchad.mappings"
-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical split" })
map("n", "-", "<cmd>:split <CR>", { desc = "Horizontal split" })
map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find Todo" })

map("n", "<leader>s", "<cmd>w<CR>", { desc = "Write file" })
map("n", "<leader>a", ":ASToggle<CR>", { desc = "Auto-save Toggle" })

map("n", "<leader>s", "<cmd>w<CR>", { desc = "Write file" })
map("n", "zR", require("ufo").openAllFolds)
map("n", "zM", require("ufo").closeAllFolds)

map("n", "<leader>gl", ":Flog<CR>", { desc = "Git Log" })

map("n", "<leader>gf", ":DiffviewFileHistory<CR>", { desc = "Git File History" })
map("n", "<leader>gc", ":DiffviewOpen HEAD~1<CR>", { desc = "Git Last Commit" })
map("n", "<leader>gg", ":DiffviewToggleFile<CR>", { desc = "Git File History" })

map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, {desc = "Close All Buffers"}) 
