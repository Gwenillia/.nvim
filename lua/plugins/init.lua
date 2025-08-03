return {
  {
    'nvim-telescope/telescope.nvim', version = '0.1.3',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },
  
  'nvim-treesitter/nvim-treesitter',
  'mbbill/undotree',
  'tpope/vim-fugitive',
  
  -- LSP and completion (simplified)
  {
    'williamboman/mason.nvim',
    config = true,
  },
  'neovim/nvim-lspconfig',
  
  -- Completion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
    },
  },
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
  },
  "lukas-reineke/indent-blankline.nvim",
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
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
