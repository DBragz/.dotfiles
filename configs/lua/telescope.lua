--
-- Name:        telescope.lua
-- Description: Neovim telescope plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

vim.keymap.set("n", "<leader>th", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>tf", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>tg", ":Telescope git_files<CR>")
vim.keymap.set("n", "<leader>td", ":Telescope diagnostics<CR>")
vim.keymap.set("n", "<leader>tl", ":Telescope lsp_references<CR>")

