require('lazy').setup({
  -- LSP
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  -- Auto completion
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/cmp-nvim-lua',
  -- Snippets
  'L3MON4D3/LuaSnip',
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },
  {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  },
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
      }
    end
  },
  {
    "ray-x/go.nvim",
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", 'gomod' },
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  "nvim-treesitter/nvim-treesitter",
  "nvim-treesitter/playground",
  "theprimeagen/harpoon",
  "theprimeagen/refactoring.nvim",
  "mbbill/undotree",
  "tpope/vim-fugitive",
  "nvim-treesitter/nvim-treesitter-context",
  "easymotion/vim-easymotion"
})
