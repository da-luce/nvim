-- shorten function name
local map = vim.api.nvim_set_keymap
-- Silent map option
local opts = { noremap = true, silent = true }

--Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- NORMAL --

-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
map("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
map("n", "<S-q>", "<cmd>Bdelete<CR>", opts)
--map("n", "<S-q>", ":bd<CR>", opts)

-- Better paste (could this be the source of clipboard hangs?)
map("v", "p", '"_dP', opts)

-- INSERT --
-- Press jk fast to enter
map("i", "jk", "<ESC>", opts)

-- VISUAL --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- LSP --
-- See lua/plugins/config/lsp/lspconfig.lua

-- PLUGINS --

-- NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
map("n", "<leader>fp", ":Telescope projects<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Git
map("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
map("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
map("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', opts)

-- Lsp
map("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
