--
-- Name:        telescope.lua
-- Description: Neovim telescope plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    preview = {
      treesitter = false,
    },
  },
})

vim.keymap.set("n", "<leader>th", builtin.help_tags, { desc = "Telescope: Help tags" })
vim.keymap.set("n", "<leader>tf", builtin.find_files, { desc = "Telescope: Find files" })
vim.keymap.set("n", "<leader>tg", builtin.git_files, { desc = "Telescope: Git files" })
vim.keymap.set("n", "<leader>td", builtin.diagnostics, { desc = "Telescope: Diagnostics" })
vim.keymap.set("n", "<leader>tl", builtin.lsp_references, { desc = "Telescope: LSP references" })

vim.keymap.set("n", "<leader>tlg", builtin.live_grep, { desc = "Telescope: Live grep" })
vim.keymap.set("n", "<leader>tgr", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Telescope: Grep string" })
