local options = {

    -- Indenting

    autoindent = true,          -- apply same indent to next line on enter
    smartindent = true,         -- indent reacts to code syntax
    tabstop = 4,                -- insert 4 spaces for a tab (how many columns of whitespace a \t char is worth)
    expandtab = true,           -- convert tabs to spaces
    shiftwidth = 4,             -- number of spaces inserted for each indentation
    softtabstop = 4,            -- how many columns of whitespace a tab or backspace is worth

    -- UI

    cursorline = true,          -- highlight current line of cursor
    number = true,              -- show line numbers
    termguicolors = true,       -- use colorscheme & init.lua gui values to set color highlighting rather than cterm* values
    background = "dark",        -- use dark colorscheme for themes with light/dark variants
    signcolumn = "yes",         -- permanent column for LSP & Git icons in gutter
    ruler = false,              -- hide line and column number of the cursor position in cmdline (already habe in statusline!)
    showmode = false,           -- don't show mode in the command line (already have in statusline!)

    -- Interactions

    mouse = "a",                -- enable mouse in all modes
    updatetime = 300,           -- time to write a swap file and determine when cursor isn't moving (in milliseconds) - completion and gitgutter relies on this
    timeoutlen = 1000,          -- time to wait for a mapped sequence to complete (in milliseconds)
    clipboard = "unnamedplus",  -- allows neovim to access system keyboard
    ignorecase = true,          -- ignore case in search patterns
    scrolloff = 8,              -- minimum number of context lines above and below cursor (keeps cursor more centered when scrolling)
    undofile = true,            -- enable persistent undo (undotree is saved to a file when exiting buffer)
    wrap = false,               -- display lines as one long line
    sidescrolloff = 8,          -- minimal number of screen columns to left and right of the cursor if wrap is `false`

    spelllang = "en_us",        -- spell check in US english

    -- Character highlights

    listchars = {
        trail = '⋅',            -- shows trailing whitespaces
        tab = '  ',             -- shows tabs as spaces (must override for some reason)
    },
    list = true,
    fillchars = {
        eob = ' ',               -- show empty lines at the end of a buffer as ` ` {default `~`}
    }
}

-- Set options
for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Additional options 
vim.opt.iskeyword:append("-")       -- treats words with `-` as single words

vim.diagnostic.config({
    virtual_text = false,           -- Turn off inline diagnostics
    signs = true,
    float = { border = "rounded" },
})

vim.cmd('autocmd CursorMoved * lua vim.diagnostic.open_float()')

-- ??
vim.g.symbols_outline = {
    highlight_hovered_item = false,
}
