--
-- Name: tive.lua
-- Description: Neovim vim-fugitive plugin settings.
-- Author: Daniel Ribeirinha-Braga
--

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>ga", ":G add .<CR>")
vim.keymap.set("n", "<leader>gp", ":G push<CR>")

