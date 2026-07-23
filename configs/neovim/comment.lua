--
-- Name:        comment.lua
-- Description: Neovim comment settings.
-- Author:      Daniel Ribeirinha-Braga
--

require('mini.comment').setup({
  options = {
    ignore_blank_line = false,
    start_of_line = false,
    pad_comment_parts = true,
  },
  mappings = {
    comment = 'gc',
    comment_line = 'gcc',
    comment_visual = 'gc',
    textobject = 'gc',
  },
})

vim.keymap.set('n', '<C-_>', 'gcc', {
  remap = true,
  silent = true,
  desc = "Toggle comment line"
})

vim.keymap.set('v', '<C-_>', 'gc', {
  remap = true,
  silent = true,
  desc = "Toggle comment selection"
})

vim.keymap.set('i', '<C-_>', '<Esc>gccA', {
  remap = true,
  silent = true,
  desc = "Toggle comment line (insert mode)"
})
