local status_ok, db = pcall(require, "dashboard")

if not status_ok then
  return
end

-- Header

-- Center entire view
db.header_pad = math.floor((vim.fn.winheight(0) - 27) / 2)

db.custom_header = {
    [[                                         ]],
    [[     _   ____________ _    ________  ___ ]],
    [[    / | / / ____/ __ \ |  / /  _/  |/  / ]],
    [[   /  |/ / __/ / / / / | / // // /|_/ /  ]],
    [[  / /|  / /___/ /_/ /| |/ // // /  / /   ]],
    [[ /_/ |_/_____/\____/ |___/___/_/  /_/    ]],
    [[                                         ]],
}

-- Center
db.custom_center = {

    {icon = '  ',
    desc = 'Recent Sessions                         ',
    action = 'Telescope session-lens search_session',
    shortcut = 's'},

    {icon = '  ',
    desc = 'Recent Files                            ',
    action =  'Telescope oldfiles',
    shortcut = 'r'},

    {icon = '  ',
    desc = 'Find File                               ',
    action = 'Telescope find_files',
    shortcut = 'f'},

    {icon = '  ',
    desc = 'File Browser                            ',
    action =  'Telescope file_browser',
    shortcut = 'b'},

    {icon = '  ',
    desc = 'Update Packages                         ',
    action = 'PackerSync',
    shortcut = 'u'},

    {icon = '  ',
    desc = 'Configure                               ',
    action = 'cd ~/.config/nvim/lua | :NvimTreeOpen',
    shortcut = 'c'},

    {icon = '  ',
    desc = 'Quit                                    ',
    action = ':qa',
    shortcut = 'q'}
}

db.center_pad = 2

-- Footer
local v = vim.version()
local version = string.format("v%d.%d.%d", v.major, v.minor, v.patch)

local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))

local time = os.date("%H:%M")

db.custom_footer = {" " .. version .. "   " .. plugins_count .. "   " .. time}

db.footer_pad = 2

-- Keymaps because dashboard keymaps don't work for some reason
vim.api.nvim_create_autocmd("FileType", {
    pattern = "dashboard",
    group = vim.api.nvim_create_augroup("dashboard_enter", { clear = true }),
    callback = function ()
        vim.keymap.set("n", "s", ":Telescope session-lens search_session<CR>", { buffer = true, silent = true })
        vim.keymap.set("n", "r", ":Telescope oldfiles<CR>", { buffer = true, silent = true })
        vim.keymap.set("n", "f", ":Telescope find_files<CR>", { buffer = true, silent = true })
        vim.keymap.set("n", "b", ":Telescope file_browser<CR>", { buffer = true, silent = true })
        vim.keymap.set("n", "u", ":PackerSync<CR>", { buffer = true, silent = true })
        vim.keymap.set("n", "c", ":cd ~/.config/nvim/lua/ | e plugins/init.lua | NvimTreeOpen <CR>", { buffer = true, silent = true })
        vim.keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
    end
})
