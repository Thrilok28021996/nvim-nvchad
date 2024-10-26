return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Add other plugins here
  {
    "folke/noice.nvim",
    config = function()
      require "configs.noice"
    end,
    requires = {
      { "MunifTanjim/nui.nvim" },
      {
        "rcarriga/nvim-notify",
        config = function()
          require("notify").setup {
            stages = "fade_in_slide_out",
            timeout = 2000,
            background_colour = "#000000",
          }
          vim.notify = require "notify"
        end,
      },
    },
  },
}
