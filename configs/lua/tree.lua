--
-- Name:        tree.lua
-- Description: Neovim nvim-tree plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

require("nvim-tree").setup()

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>nt", ":NvimTreeResize ")

