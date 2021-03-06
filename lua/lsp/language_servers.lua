local lspconfig = require('lspconfig')
local lsp_installer = require('nvim-lsp-installer')
lsp_installer.setup {}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- local on_attach = function(client)
--   lspformat.on_attach(client)
-- end

-- Language server set ups
lspconfig.elixirls.setup {
  capabilities = capabilities,
  -- on_attach = on_attach,
}
lspconfig.sumneko_lua.setup {
  capabilities = capabilities,
  -- on_attach = on_attach,
  settings =
  {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim', 'use' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  }
}
lspconfig.tsserver.setup {
  capabilities = capabilities,
  -- on_attach = on_attach,
}
lspconfig.pyright.setup {
  capabilities = capabilities,
  -- on_attach = on_attach,
}
lspconfig.html.setup {
  capabilities = capabilities,
  -- on_attach = on_attach,
}
lspconfig.cssls.setup {
  capabilities = capabilities,
  -- on_attach = on_attach,
}
