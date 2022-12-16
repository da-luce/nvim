local options = {
    autoindent = true,  -- ??
    expandtab = true,   -- ??
    shiftwidth = 4,     -- ??
    smartindent = true, -- ??
    softtabstop = 4,    -- ??
    tabstop = 4,        -- insert 4 spaces for a tab
    cursorline = true,  -- highlight current line of cursor
    number = true,      -- show line numbers
    mouse = "a",        -- enable mouse in all modes
    clipboard = "unnamedplus", -- allows neovim to access system keyboard
    termguicolors = true, -- set term gui

}

vim.opt.spelllang = "en_us" -- enable English spell checking

-- Set options
for k, v in pairs(options) do
    vim.opt[k] = v
end

 -- LSP Settings
vim.cmd[[set signcolumn=yes]]           -- Permanent column for LSP icons in gutter

vim.diagnostic.config({
    virtual_text = false,           -- Turn off inline diagnostics
    signs = true,
    float = { border = "rounded" },
})

vim.cmd('autocmd CursorMoved * lua vim.diagnostic.open_float()')
vim.o.updatetime = 300

-- ??
vim.g.symbols_outline = {
    highlight_hovered_item = false,
}


