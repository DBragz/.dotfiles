--
-- Name: lsp.lua
-- Description: Neovim Language Server Processing (LSP) zero plugin settings.
-- Author: Daniel Ribeirinha-Braga
--

vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
--vim.keymap.set("n", "", )

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

