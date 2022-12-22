-- TODO: autocommands not working

--local toggle_mouse = vim.api.nvim_create_augroup("ToggleMouse", {clear = true})
-- Disable mouse in dashboard
--[[vim.api.nvim_create_autocmd(
    -- Event 
    "User",
    -- Options
    {
        pattern = "dashboardReady",
        command = "set mouse=",
    }
)]]
--[[
-- Re-enable mouse when leaving dashboard
vim.api.nvim_create_autocmd(
    -- Event 
    {"BufUnload"},
    -- Options
    {
        pattern = "<buffer>",
        command = "set mouse=a",
        group = toggle_mouse,
    }
)]]

--alpha autocmds
--[[
    local toggle_bufferline = vim.api.nvim_create_augroup("ToggleBufferline", { clear = true })
vim.api.nvim_create_autocmd("User", {
  callback = function()
    vim.o.showtabline = 0
  end,
  group = toggle_bufferline,
  pattern = "AlphaReady",
})
vim.api.nvim_create_autocmd("BufUnload", {
  callback = function()
    print("running this..")
    vim.o.showtabline = 2
  end,
  group = toggle_bufferline,
  pattern = "<buffer>",
})
]]
