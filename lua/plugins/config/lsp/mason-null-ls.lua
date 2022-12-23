local setup, mason_null_ls = pcall(require, "mason-null-ls")
if not setup then
  return
end

mason_null_ls.setup({
    ensure_installed = {
        -- Add more?
        "lua_format",
        "lua_check"
    }
})
