vim.api.nvim_command("colorscheme catppuccin")

vim.g.material_style = "deep ocean"

--[[ Custom dashbard highlights for Tokyodark
vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = "#7199ee" })
vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = "#a485dd" })
vim.api.nvim_set_hl(0, 'DashboardShortCut', { fg = "#38a89d" })
vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = "#ff9e64" })
]]

-- Other visual options (NOT WORKING)

vim.g.tokyodark_transparent_background = true
