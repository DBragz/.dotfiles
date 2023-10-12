--
-- Name:        remap.lua
-- Description: Neovim remap settings.
-- Author:      Daniel Ribeirinha-Braga
--

vim.g.maplocalleader = "g"
vim.g.mapleader = " "

vim.keymap.set("n", "<localleader>E", ":E<CR>")
vim.keymap.set("t", "<leader>e", "<C-\\><C-n>")
vim.keymap.set("n", "<leader>so", ":so<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>ps", ":PackerSync<CR>")
--vim.keymap.set("n", "<leader>tsu", ":TSUpdate<CR>")
--vim.keymap.set("n", "<C-_>", function() print("Comment out code!") end)
--vim.keymap.set("n", "<leader>p", function() print('Search project!') end)
