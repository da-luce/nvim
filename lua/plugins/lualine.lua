local navic = require("nvim-navic")

require('lualine').setup {
    options = {
        theme = "auto",
        style = "lvim",
        disabled_filetypes = { "alpha", "dashboard"},
        globalstatus = true,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},

    },
    --[[
    winbar = {
        lualine_a = { navic.get_location },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
    inactive_winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    }]]
    --[[
    sections = {
        lualine_c = {
            { navic.get_location, cond = navic.is_available },
        }
    }]]
}
