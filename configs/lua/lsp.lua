--
-- Name: lsp.lua
-- Description: Neovim Language Server Processing (LSP) zero plugin settings.
-- Author: Daniel Ribeirinha-Braga
--

local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  "jdtls",
  "pylsp",
  "tsserver",
  "sumneko_lua",
  "bashls"
})

lsp.setup()

