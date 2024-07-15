--
-- Name:        colors.lua
-- Description: Neovim highlihgt group settings.
-- Author:      Daniel Ribeirinha-Braga
--

vim.cmd [[colorscheme elflord]]

vim.opt.colorcolumn = "80"
vim.api.nvim_set_hl(0, "colorcolumn", { bg="DarkCyan" })

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

