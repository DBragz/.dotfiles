--
-- Name:        colors.lua
-- Description: Neovim highlihgt group settings.
-- Author:      Daniel Ribeirinha-Braga
--

vim.opt.colorcolumn = "80"
vim.api.nvim_set_hl(0, "colorcolumn", { bg="DarkCyan" })

vim.cmd [[colorscheme elflord]]

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

