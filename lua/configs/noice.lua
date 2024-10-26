require("noice").setup {
  cmdline = {
    enabled = true,
    view = "cmdline_popup", -- Shows command line as a popup at the top
  },
  popupmenu = {
    enabled = true,
    backend = "cmp", -- Uses nvim-cmp for auto-completion suggestions
  },
  messages = {
    enabled = false, -- Disable message history display
  },
}
