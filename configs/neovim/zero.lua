--
-- Name:        zero.lua
-- Description: Neovim Language Server Processing (LSP) zero plugin settings.
-- Author:      Daniel Ribeirinha-Braga
--

vim.keymap.set("n", "<leader>lbd", vim.lsp.buf.definition, { desc = "vim.lsp.buf.definition" })
vim.keymap.set("n", "<leader>lbh", vim.lsp.buf.hover, { desc = "vim.lsp.buf.hover" })
vim.keymap.set("n", "<leader>lbc", vim.lsp.buf.code_action, { desc = "vim.lsp.buf.code_action" })
vim.keymap.set("n", "<leader>lbr", vim.lsp.buf.rename, { desc = "vim.lsp.buf.rename" })

vim.keymap.set("n", "<leader>lbw", vim.lsp.buf.workspace_symbol, { desc = "vim.lsp.buf.workspace_symbol" })
vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float, { desc = "vim.diagnostic.goto_next" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "vim.diagnostic.goto_next" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "vim.diagnostic.goto_prev" })
vim.keymap.set("n", "<leader>lbs", vim.lsp.buf.signature_help, { desc = "vim.lsp.buf.signature_help" })

local lsp_zero = require('lsp-zero')

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'denols',
    'lua_ls',
    'jdtls',
    'powershell_es',
 },
  handlers = {
    lsp_zero.default_setup,
  },
})

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          'vim',
        },
      },
    },
  },
}

