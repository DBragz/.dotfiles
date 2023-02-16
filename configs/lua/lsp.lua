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

local lsp = require("lsp-zero")

lsp.preset('recommended')

lsp.ensure_installed({
  "jdtls",
  "pylsp",
  "tsserver",
  "lua_ls",
  "bashls"
})

lsp.configure("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
})

lsp.setup()

