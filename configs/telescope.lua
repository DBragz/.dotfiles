--
-- Name: telescope.lua
-- Description: Neovim telescope plugin settings.
-- Author: Daniel Ribeirinha-Braga
--

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files)
vim.keymap.set("n", "<C-p>", builtin.git_files)

