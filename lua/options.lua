require "nvchad.options"

-- add yours here!
local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true -- set relative numbered linespace
vim.wo.number = true
o.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim.
o.smartindent = true -- make indenting smarter again
o.autoindent = true -- copy indent from current line when starting new one
-- vim.o.foldmethod = 'indent' -- or 'syntax' for syntax-based
vim.o.foldlevelstart = 99 -- starts unfolded by default, set to lower for initial folding
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
