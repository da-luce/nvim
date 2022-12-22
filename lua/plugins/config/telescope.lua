local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup({
    pickers = {
        find_files = {
            hidden = true
        }
    },
    extensions = {
        file_browser = {
            hidden = true
        },
    },
})

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
telescope.load_extension "file_browser"
