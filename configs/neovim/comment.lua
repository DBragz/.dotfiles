--
-- Name:        comment.lua
-- Description: Neovim comment settings.
-- Author:      Daniel Ribeirinha-Braga
--

require('Comment').setup()

vim.api.nvim_set_keymap('i', '<C-_>', '<Esc>gccA', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-_>', 'gcc', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-_>', 'gc', { noremap = true, silent = true })

