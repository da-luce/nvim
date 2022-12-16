local db = require('dashboard')
local home = os.getenv('HOME')

local date = os.date()

db.custom_header = {
    [[                                         ]],
    [[     _   ____________ _    ________  ___ ]],
    [[    / | / / ____/ __ \ |  / /  _/  |/  / ]],
    [[   /  |/ / __/ / / / / | / // // /|_/ /  ]],
    [[  / /|  / /___/ /_/ /| |/ // // /  / /   ]],
    [[ /_/ |_/_____/\____/ |___/___/_/  /_/    ]],
    [[                                         ]],
}

db.center_pad = 2

db.custom_center = {

    {icon = '  ',
    desc = 'Recently latest session                 ',
    shortcut = 'SPC s l',
    action ='SessionLoad'},

    {icon = '  ',
    desc = 'Recently opened files                   ',
    action =  'Telescope oldfiles',
    shortcut = 'SPC f h'},

    {icon = '  ',
    desc = 'Find  File                              ',
    action = 'Telescope find_files find_command=rg,--hidden,--files',
    shortcut = 'SPC f f'},

    {icon = '  ',
    desc ='File Browser                            ',
    action =  'Telescope file_browser',
    shortcut = 'SPC f b'},

    {icon = '  ',
    desc = 'Find  word                              ',
    action = 'Telescope live_grep',
    shortcut = 'SPC f w'},

    {icon = '  ',
    desc = 'Sync Packages                           ',
    action = 'PackerSync',
    shortcut = 'SPC p s'},

    {icon = '  ',
    desc = 'Colorscheme                             ',
    action = 'Telescope colorscheme',
    shortcut = 'SPC c s'},

    {icon = '  ',
    desc = 'Configure                               ',
    action = 'cd ~/.config/nvim | Telescope file_browser',
    shortcut = 'SPC w k'},
}

local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))

local v = vim.version()
local version = string.format("v%d.%d.%d", v.major, v.minor, v.patch)

local time = os.date("%H:%M")

db.custom_footer = {" " .. version .. "   " .. plugins_count .. "   " .. time}
db.footer_pad = 4
