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
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
        offsets = {
            {
                filetype = "NvimTree",
                text = "",
                -- Removing fixes tokyodark and doesn't seem to affect other themes
                --highlight = "PanelHeading",
                padding = 1,
                text_align = "center",
            },
        },
    },

    highlights = {
        background = {
            italic = true,
        },
        buffer_selected = {
            bold = true,
            italic = false,
        },
    }
}
