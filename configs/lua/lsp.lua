--
-- Name: lsp.lua
-- Description: Neovim Language Server Processing (LSP) zero plugin settings.
-- Author: Daniel Ribeirinha-Braga
--

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

--vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
--vim.keymap.set("n", "<leader>vd", vim.lsp.buf.open_float)
--vim.keymap.set("n", "[d", vim.lsp.buf.goto_next)
--vim.keymap.set("n", "[d", vim.lsp.buf.goto_prev)
--vim.keymap.set("n", "<C-h>", vim.lsp.buf.signature_help)

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {
    'clangd',
    'jdtls',
    'lua_ls',
    'powershell_es',
    --'pylsp',
    --'tsserver',
  },
  handlers = {
    lsp_zero.default_setup,
  },
})

