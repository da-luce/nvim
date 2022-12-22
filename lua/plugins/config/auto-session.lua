local status_ok, session = pcall(require, "auto-session")

if not status_ok then
  return
end

session.setup {
-- Sets the log level of the plugin??
    log_level = "error",
    -- Suppress session create/restore if in one of the list of dirs
    auto_session_suppress_dirs = { "~/", "~/dev", "/"},
}
