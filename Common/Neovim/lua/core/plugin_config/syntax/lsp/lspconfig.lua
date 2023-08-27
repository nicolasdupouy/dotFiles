-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require("lspconfig")
-- The following example advertise capabilities to `clangd`.
lspconfig.clangd.setup {
  capabilities = capabilities,
}

lspconfig.bashls.setup {
  capabilities = capabilities,
}

lspconfig.gopls .setup {
  capabilities = capabilities,
}

lspconfig.sqlls.setup {
  capabilities = capabilities,
}
