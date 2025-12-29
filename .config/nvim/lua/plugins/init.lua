return {
  {
    "smoka7/hop.nvim",
    lazy = false,
    config = function()
      vim.cmd([[
        hi HopNextKey  cterm=bold gui=bold ctermfg=196 guifg=#ff0000
        hi HopNextKey1 cterm=bold gui=bold ctermfg=208 guifg=#ff8700
        hi HopNextKey2 cterm=bold gui=bold ctermfg=208 guifg=#ff8700
        ]])
      require'hop'.setup()
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    lazy = false,
    opts = {
      window = {
        mappings = {
          ["o"] = "open",
          ["I"] = "toggle_hidden",
          ["<tab>"] = function() vim.cmd("wincmd w") end,
          ["J"] = function() vim.cmd("HopLineStartAC") end,
          ["K"] = function() vim.cmd("HopLineStartBC") end,
          -- TODO:
          ["A"] = function() end,
          ["u"] = function() end,
          -- DISABLE
          ["x"] = false,
          ["d"] = false,
          ["/"] = false,
          ["H"] = false,
          ["a"] = false,
          ["oc"] = false,
          ["od"] = false,
          ["og"] = false,
          ["om"] = false,
          ["on"] = false,
          ["os"] = false,
          ["ot"] = false,
        },
      },
    },
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {},
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  { "nvim-tree.lua",  enabled = false },
}
