--
-- Name:        tive.lua
-- Description: Neovim vim-fugitive plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>ga", ":G add .<CR>")
vim.keymap.set("n", "<leader>gct", ":G commit -m ")
--vim.keymap.set("n", "<leader>gmai", function(":G commit -m " .. args[1] end)
vim.keymap.set("n", "<leader>gph", ":G push<CR>")
vim.keymap.set("n", "<leader>gpl", ":G pull<CR>")

