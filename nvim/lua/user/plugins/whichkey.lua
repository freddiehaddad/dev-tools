local status_ok, plugin

status_ok, plugin = pcall(require, "which-key")
if not status_ok then
  vim.notify("Plugin: which-key not found!")
  return
end

local options = {
  window = {
    border = "single"
  }
}

plugin.setup(options)

