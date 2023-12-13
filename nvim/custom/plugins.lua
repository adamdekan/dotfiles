local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = {
      "black",
      "mypy",
      "ruff",
      "pyright",
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- install a plugin
  {
    "max397574/better-escape.nvim",
    event = "insertenter",
    config = function()
      require("better_escape").setup()
    end,
  },
  -- lazy.nvim
  {
   "ThePrimeagen/vim-be-good",
    lazy = false,
  },
  {
     "m4xshen/hardtime.nvim",
     dependencies = { "muniftanjim/nui.nvim", "nvim-lua/plenary.nvim" },
     opts = {},
      lazy = false,
  },
  -- to make a plugin not be loaded
  -- {
  --   "nvchad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
