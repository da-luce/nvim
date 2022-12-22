local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local cmp_nvim_lsp_status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status_ok then
	return
end

local navic_lsp_status_ok, navic = pcall(require, "nvim-navic")
if not navic_lsp_status_ok then
	return
end

local on_attach = function(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
		navic.attach(client, bufnr)
	end
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Setup pyright server (Python)
lspconfig['pyright'].setup {
    capabilities = capabilities,
	on_attach = on_attach,
}

-- Setup clangd server (C/C++)
lspconfig['clangd'].setup {
    apabilities = capabilities,
	on_attach = on_attach,
}

-- Setup eslint server (Javascript?)
lspconfig['eslint'].setup {
    apabilities = capabilities,
	on_attach = on_attach,
    root_dir = require('lspconfig').util.root_pattern('.js');
}

-- Setup sumneko_lua server (Lua)
lspconfig['sumneko_lua'].setup {
    apabilities = capabilities,
	on_attach = on_attach,
    settings = {
    Lua = {
      diagnostics = {
        globals = {"vim"},
      },
      telemetry = { enable = false }
    },
  },
}
