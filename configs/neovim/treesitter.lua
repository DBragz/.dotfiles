--
-- Name:        treesitter.lua
-- Description: Neovim treesitter plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

local status_ok, treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

treesitter_configs.setup {
  ensure_installed = {
    "lua",
    "markdown",
    "markdown_inline",
    "powershell"
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

