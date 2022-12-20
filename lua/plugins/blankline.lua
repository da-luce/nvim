require("indent_blankline").setup {
    show_current_context = true,            -- highlight current context
    show_current_context_start = false,     -- get rid of underline on start of context
    show_end_of_line = false,
    show_trailing_blankline_indent = false,
    space_char_blankline = " ",
    use_treesitter = true,
    filetype_exclude = {"help", "dashboard", "packer", "NvimTree", "Trouble", "TelescopePrompt", "Float"},
    buftype_exclude = {"terminal", "telescope", "nofile"},
}

-- vim.opt.list = true
vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"
vim.api.nvim_set_hl(0, 'IndentBlanklineContextStart', {})
