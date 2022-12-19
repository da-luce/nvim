vim.cmd[[colorscheme tokyodark]]

vim.g.material_style = "deep ocean"

-- Custom dashbard highlights for Tokyodark
vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = "#7199ee" })
vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = "#a485dd" })
vim.api.nvim_set_hl(0, 'DashboardShortCut', { fg = "#38a89d" })
vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = "#ff9e64" })

-- Other visual options (NOT WORKING)

-- vim.opt.list = true
vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"
vim.api.nvim_set_hl(0, 'IndentBlanklineContextStart', {})
