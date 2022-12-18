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
    sections = {
        lualine_c = {
            { navic.get_location, cond = navic.is_available },
        }
    }
}
