local status_ok, plugin

status_ok, plugin = pcall(require, "trouble")
if not status_ok then
  vim.notify("Plugin: trouble not found!")
  return
end

plugin.setup()
