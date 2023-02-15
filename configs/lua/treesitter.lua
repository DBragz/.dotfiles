--
-- Name: .lua
-- Description: Neovim treesitter plugin settings.
-- Author: Daniel Ribeirinha-Braga
--

require("nvim-treesitter.configs").setup {

  ensure_installed = { "java", "python", "javascript", "typescript", "lua", "bash" },

  sync_install = false,

  auto_install = true,

  highlight = {

    enable = true,

    additional_vim_regex_highlighting = false,
  },
}

