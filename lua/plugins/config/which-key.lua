local status_ok, key = pcall(require, "which-key")

if not status_ok then
    return
end

key.setup {
    window = {
        border = "single",
    }
}
