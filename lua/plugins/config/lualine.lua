local navic = require("nvim-navic")

--[[
require('lualine').setup {
    options = {
        theme = "auto",
        style = "lvim",
        disabled_filetypes = { "alpha", "dashboard"},
        globalstatus = true,                                -- Use one status line instead of one for each window
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},

    },
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
    }
    sections = {
        lualine_c = {
            { navic.get_location, cond = navic.is_available },
        }
    },
    winbar = {
        lualine_c = {navic.get_location}
    },
    inactive_winbar = {
        lualine_c = {navic.get_location}
    }
}]]


-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require('lualine').setup {
  options = {
    theme = "catppuccin",
    globalstatus = "true",

    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { right = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { left = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
--[[
local theme = require("lualine.themes.catppuccin")

require('lualine').setup {
           options = {
            theme = theme,
            section_separators = { left = "", right = "" },
            component_separators = { left = "", right = "" },
            icons_enabled = true,
            globalstatus = true,
        },
        sections = {
            lualine_a = { { "mode", upper = true } },
            lualine_b = { { "branch", icon = "" } },
           --  lualine_c = { custom_components.pwd },
            lualine_x = { "filetype" },
            lualine_y = {
                {
                    "diff",
                    colored = true,
                    diff_color = {
                        added = { fg = colors.diff_add },
                        modified = { fg = colors.diff_modify },
                        removed = { fg = colors.diff_remove },
                    },
                    symbols = { added = "+", modified = "~", removed = "-" },
                },
                "location",
            },
            lualine_z = {},
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { "filename" },
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
        },
        extensions = { { sections = { lualine_b = { "filetype" } }, filetypes = { "NvimTree" } } },
}]]

