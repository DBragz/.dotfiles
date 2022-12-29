local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  "jdtls",
  "pylsp",
  "sumneko_lua"
})

lsp.setup()

