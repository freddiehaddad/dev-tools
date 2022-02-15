local status_ok, plugin

status_ok, plugin = pcall(require, "gitsigns")
if not status_ok then
  vim.notify("Plugin: gitsigns not installed!")
  return
end

plugin.setup()

