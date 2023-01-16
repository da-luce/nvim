local status_ok, autotag = pcall(require, "autotag")
if not status_ok then
    return
end

autotag.setup({
    autotag = {
        enable = true,
    }
})
