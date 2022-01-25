local plugin_name = "lualine"

local status_ok, plugin = pcall(require, plugin_name)
if not status_ok then
  vim.notify(plugin_name .. " plugin not found!")
  return
end

local colorscheme = vim.notify(vim.g.colors_name)

local config = {
  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '│', right = '│' },
    theme = colorscheme,
  },
}

plugin.setup(config)

