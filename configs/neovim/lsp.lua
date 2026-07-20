--
-- Name:        lsp.lua
-- Description: Neovim Language Server Processing (LSP) native configuration.
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

require('mason').setup({})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')

require('mason-lspconfig').setup({
  ensure_installed = {
    'powershell_es',
    'lua_ls',
    'marksman',
  },
  handlers = {
    function(server_name)
      lspconfig[server_name].setup({
        capabilities = capabilities,
      })
    end,
    ['lua_ls'] = function()
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            }
          }
        }
      })
    end,
  }
})

local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm({ select = true })
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

