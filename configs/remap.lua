--
-- Name: remap.lua
-- Description: Neovim remap settings.
-- Author: Daniel Ribeirinha-Braga
--

vim.g.mapleader = " "
vim.g.maplocalleader = "g"

vim.keymap.set("n", "<leader>e", vim.cmd.E)
vim.keymap.set("n", "<localleader>e", vim.cmd.E)

