--
-- Name:        tive.lua
-- Description: Neovim vim-fugitive plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

vim.keymap.set("n", "<leader>gi", ":G init<CR>")
vim.keymap.set("n", "<leader>gs", ":G status<CR>")
vim.keymap.set("n", "<leader>ga", ":G add .<CR>")
vim.keymap.set("n", "<leader>gct", ":G commit -m ")
vim.keymap.set("n", "<leader>gph", ":G push<CR>")
vim.keymap.set("n", "<leader>gpl", ":G pull<CR>")

