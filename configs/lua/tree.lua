--
-- Name:        tree.lua
-- Description: Neovim nvim-tree plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

require("nvim-tree").setup()

local args = {...}

vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tr", ":NvimTreeResize ")

