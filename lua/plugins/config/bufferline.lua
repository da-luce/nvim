local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {

    options = {
        mode = "buffers",
        close_command = "Bdelete! %d",
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        right_mouse_command = "vertical sbuffer %d", -- can be a string | function, see "Mouse actions"
        separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
        show_buffer_close_icons = true,
        tab_size = 20, -- increase tab size, default 18
        offsets = {
            {
                filetype = "NvimTree",
                text = "",
                -- Removing fixes tokyodark and doesn't seem to affect other themes
                -- highlight = "PanelHeading",
                padding = 0,
                text_align = "center",
                separator = false
            },
        },
    },
    highlights = {
        background = {
            italic = false,
        },
        buffer_selected = {
            bold = true,
            italic = false,
        },
    },
}
