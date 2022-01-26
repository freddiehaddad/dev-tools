local plugin_name = "nvim-web-devicons"
local status_ok, plugin = pcall(require, plugin_name)
if not status_ok then
  vim.notify("plugin: " .. plugin_name .. " not found!")
  return
end

local option = {
  default = true,
}

plugin.setup(option)

