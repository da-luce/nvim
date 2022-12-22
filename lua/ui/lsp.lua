-- Define lsp diagnostic icons
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config {
    virtual_text = false, -- disable inline diagnostics
    signs = true,
    underline = true,
    update_in_insert = false,
    float = {
      focused = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = " Diagnostics",
      prefix = "",
    },
}
