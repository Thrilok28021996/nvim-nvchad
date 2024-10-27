-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require("nvchad.configs.lspconfig")

lspconfig.pylsp.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
	settings = {
		pylsp = {
			plugins = {
				pyflakes = { enabled = false },
				pycodestyle = { enabled = false },
				autopep8 = { enabled = false },
				yapf = { enabled = false },
				mccabe = { enabled = false },
				pylsp_mypy = { enabled = false },
				pylsp_black = { enabled = false },
				pylsp_isort = { enabled = false },
				ruff = {
					enabled = true, -- Enable the plugin
					formatEnabled = true, -- Enable formatting using ruffs formatter
					-- executable = "<path-to-ruff-bin>", -- Custom path to ruff
					-- config = "<path_to_custom_ruff_toml>", -- Custom config for ruff to use
					-- extendSelect = { "I" }, -- Rules that are additionally used by ruff
					-- extendIgnore = { "C90" }, -- Rules that are additionally ignored by ruff
					-- format = { "I" }, -- Rules that are marked as fixable by ruff that should be fixed when running textDocument/formatting
					-- severities = { ["D212"] = "I" }, -- Optional table of rules where a custom severity is desired
					-- unsafeFixes = false, -- Whether or not to offer unsafe fixes as code actions. Ignored with the "Fix All" action
					--
					-- -- Rules that are ignored when a pyproject.toml or ruff.toml is present:
					-- lineLength = 88, -- Line length to pass to ruff checking and formatting
					-- exclude = { "__about__.py" }, -- Files to be excluded by ruff checking
					-- select = { "F" }, -- Rules to be enabled by ruff
					-- ignore = { "D210" }, -- Rules to be ignored by ruff
					-- perFileIgnores = { ["__init__.py"] = "CPY001" }, -- Rules that should be ignored for specific files
					-- preview = false, -- Whether to enable the preview style linting and formatting.
					targetVersion = "py310", -- The minimum python version to target (applies for both linting and formatting).
				},
			},
		},
	},
})
-- lspconfig.ruff.setup({
-- 	on_attach = nvlsp.on_attach,
-- 	on_init = nvlsp.on_init,
-- 	capabilities = nvlsp.capabilities,
-- 	-- Notes on code actions: https://github.com/astral-sh/ruff-lsp/issues/119#issuecomment-1595628355
-- 	-- Get isort like behavior: https://github.com/astral-sh/ruff/issues/8926#issuecomment-1834048218
-- 	commands = {
-- 		RuffAutofix = {
-- 			function()
-- 				vim.lsp.buf.execute_command({
-- 					command = "ruff.applyAutofix",
-- 					arguments = {
-- 						{ uri = vim.uri_from_bufnr(0) },
-- 					},
-- 				})
-- 			end,
-- 			description = "Ruff: Fix all auto-fixable problems",
-- 		},
-- 		RuffOrganizeImports = {
-- 			function()
-- 				vim.lsp.buf.execute_command({
-- 					command = "ruff.applyOrganizeImports",
-- 					arguments = {
-- 						{ uri = vim.uri_from_bufnr(0) },
-- 					},
-- 				})
-- 			end,
-- 			description = "Ruff: Format imports",
-- 		},
-- 	},
-- })

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	})
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
