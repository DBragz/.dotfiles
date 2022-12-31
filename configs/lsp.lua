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

