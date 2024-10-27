return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		opts = require("configs.conform"),
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},
	-- lazy.nvim
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},
	-- Add other plugins here
	-- Mason nvim
	-- {
	-- 	"williamboman/mason.nvim",
	-- 	opts = {
	-- 		ensure_installed = {
	-- 			"lua-language-server",
	-- 			"stylua",
	-- 			"html-lsp",
	-- 			"css-lsp",
	-- 			"prettier",
	-- 			"pylsp", -- Added python language server here
	-- 		},
	-- 	},
	-- },
	-- Tree sitter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"vimdoc",
				"html",
				"css",
				-- "python", -- Added python syntax highlighting here
			},
		},
	},
}
