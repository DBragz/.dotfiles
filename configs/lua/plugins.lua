--
-- Name:        plugins.lua
-- Description: Neovim plugins settings.
-- Author:      Daniel Ribeirinha-Braga
--

vim.cmd("echo \"Oi from plugins!\"")

return require("packer").startup {
  function(use)
    use('wbthomason/packer.nvim')
    use {
      "folke/which-key.nvim",
      config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup {
        }
      end
    }
    use({
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons',
      },
    })
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('theprimeagen/harpoon')
    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'L3MON4D3/LuaSnip'},
      }
    }
    use 'Exafunction/codeium.vim'
  end
}

