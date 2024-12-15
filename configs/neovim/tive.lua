--
-- Name:        tive.lua
-- Description: Neovim vim-fugitive plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

vim.keymap.set("n", "<leader>gini", ":G init<CR>")
vim.keymap.set("n", "<leader>gs", ":G status<CR>")
vim.keymap.set("n", "<leader>ga", ":G add .<CR>")
vim.keymap.set("n", "<leader>gco", ":G commit -m ")
vim.keymap.set("n", "<leader>gpus", ":G push<CR>")
vim.keymap.set("n", "<leader>gpul", ":G pull<CR>")
vim.keymap.set("n", "<leader>grhh", ":G reset --hard HEAD<CR>")
vim.keymap.set("n", "<leader>grh", ":G reset --hard ")
vim.keymap.set("n", "<leader>glo", ":G log ")
vim.keymap.set("n", "<leader>g", ":G diff<CR>")

