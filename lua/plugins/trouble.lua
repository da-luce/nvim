require("trouble").setup
{
    -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    signs = {
        -- icons / text used for a diagnostic
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "﫠"
    },
}

local signs = {
    Error = "",
    Warning = "",
    Hint = "",
    Information = "",
    Other = "﫠"
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
