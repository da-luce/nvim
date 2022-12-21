local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
	return
end

local lsp_status_ok, mason_lsp = pcall(require, "mason-lspconfig")
if not lsp_status_ok then
	return
end

mason.setup()

mason_lsp.setup({
    -- List of servers for Mason to install 
    ensure_installed = {
		"sumneko_lua",
        "clangd",
		"pyright",
        "eslint",
		"jsonls",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})
