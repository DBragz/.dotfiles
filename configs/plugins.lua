vim.cmd("echo \"Oi from plugins!\"")

return require("packer").startup {
  function(use)
    use "wbthomason/packer.nvim"
    use {
      "nvim-telescope/telescope.nvim", tag = "0.1.0",
      requires = { {"nvim-lua/plenary.nvim"} }
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use("nvim-treesitter/playground")
    use({
      "kyazdani42/nvim-tree.lua",
      requires = {
        "kyazdani42/nvim-web-devicons", -- optional, for file icons
      },
    })
  end
}

