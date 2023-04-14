vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use({
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.cmd('colorscheme catppuccin')
    end
  })

  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
      }
    end
  })


  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use("nvim-treesitter/playground")
  use("mbbill/undotree")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }

  use 'nvim-tree/nvim-web-devicons'

  use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }
  use 'vim-airline/vim-airline'
end)
