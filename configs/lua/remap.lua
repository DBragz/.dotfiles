--
-- Name: remap.lua
-- Description: Neovim remap settings.
-- Author: Daniel Ribeirinha-Braga
--

vim.g.mapleader = " "
vim.g.maplocalleader = "g"

vim.keymap.set("n", "<leader>e", vim.cmd.E)
vim.keymap.set("n", "<localleader>e", vim.cmd.E)
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>ps", ":PackerSync<CR>")
vim.keymap.set("n", "<leader>so", ":so<CR>")
vim.keymap.set("n", "<C-_>", function() print("control /") end)

