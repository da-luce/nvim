local setup, null_ls = pcall(require, "null-ls")
if not setup then
  return
end

-- Conciseness
local formatting = null_ls.builtins.formatting      -- Sets up linters
local diagnostics = null_ls.builtins.diagnostics    -- Set up linters 

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({

    -- Set up formaters and linters
    sources = {

        -- Formatters
        formatting.prettier,    -- js/ts formatter
        formatting.lua_format,  -- lua formatter
        formatting.black,       -- python formatter

        -- Linters
        diagnostics.eslint_d,   -- js/ts linter
        diagnostics.luacheck,   -- lua linter
        diagnostics.flake8,     -- python linter

    },

    -- Format on save
    on_attach = function(current_client, bufnr)
        if current_client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        filter = function(client)
                            --  only use null-ls for formatting instead of lsp server
                            return client.name == "null-ls"
                        end,
                        bufnr = bufnr,
                    })
                end,
            })
        end
    end,
})
