lvim.plugins = {
  -- Colorscheme { "marko-cerovac/material.nvim" },
  { "catppuccin/nvim" },
  { "EdenEast/nightfox.nvim" },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {}
  },
  { "rcarriga/nvim-notify" },
  { "HiPhish/rainbow-delimiters.nvim" },
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  { "tpope/vim-rails" },
  { "tpope/vim-endwise" },
  { "tpope/vim-bundler" },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {}
  },
  { "echasnovski/mini.animate",   version = '*' },
  {
    "Pocco81/auto-save.nvim",
    opts = {
      enabled = true,
    }
  },
  { "nvim-tree/nvim-web-devicons" },
  { "freddiehaddad/feline.nvim" },
  { "codota/tabnine-nvim" },
  { "yamatsum/nvim-cursorline" },
  {
    "lalitmee/cobalt2.nvim",
    event = { "ColorSchemePre" }, -- if you want to lazy load
    dependencies = { "tjdevries/colorbuddy.nvim" },
    init = function()
      require("colorbuddy").colorscheme("cobalt2")
    end,
  },
  {
    'xeluxee/competitest.nvim',
    dependencies = 'MunifTanjim/nui.nvim',
    config = function() require('competitest').setup() end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    'nvim-pack/nvim-spectre'
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  }
}
