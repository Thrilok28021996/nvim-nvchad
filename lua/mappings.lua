require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- quit file
map("n", "<C-q>", "<cmd> q <CR>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
--
-- TO Delete a key use this
-- vim.keymap.del('n', '<leader>th')
