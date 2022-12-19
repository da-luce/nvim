require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
    filetype_exclude = { "dashboard" },
}

-- vim.opt.list = true
vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"
vim.api.nvim_set_hl(0, 'IndentBlanklineContextStart', {})
