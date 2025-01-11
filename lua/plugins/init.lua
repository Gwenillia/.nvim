return {
  {
    'nvim-telescope/telescope.nvim', version = '0.1.3',
    -- or                            , branch = '0.1.x',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },
  --- NOTE undo comments to use tokyonight
  -- {
    -- "folke/tokyonight.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- opts = {},
  -- },
  'nvim-treesitter/nvim-treesitter',
  'mbbill/undotree',
  'tpope/vim-fugitive',
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      --- Uncomment these if you want to manage LSP servers from neovim
      -- {'williamboman/mason.nvim'},
      -- {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/nvim-cmp' },
      { 'L3MON4D3/LuaSnip' },
    }
  },
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },
  "lukas-reineke/indent-blankline.nvim",
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  },
  "lewis6991/gitsigns.nvim",
  'NvChad/nvim-colorizer.lua',
  "github/copilot.vim",
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },
  {
    "akinsho/toggleterm.nvim",
    version = '*',
    config = function()
      require("toggleterm").setup()
    end
  },
  {
    'stevearc/oil.nvim',
    config = function() require('oil').setup() end
  },
  {
    "Pocco81/true-zen.nvim",
    config = function()
      require("true-zen").setup {}
    end,
  },
  {
    "stevearc/aerial.nvim",
    config = function()
      require('aerial').setup()
    end,
  },
  { 'nagy135/typebreak.nvim', dependencies = 'nvim-lua/plenary.nvim' },
  'RaafatTurki/corn.nvim',
  'habamax/vim-godot',
}
