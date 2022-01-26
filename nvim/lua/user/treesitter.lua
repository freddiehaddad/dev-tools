local plugin_name = "nvim-treesitter"
local plugin_config_name = plugin_name .. ".configs"

local status_ok, plugin_config = pcall(require, plugin_config_name)
if not status_ok then
  vim.notify("plugin: " .. plugin_name .. " not found!")
  return
end

local options = {
  ensure_installed = "maintained",
  sync_install = false,
  ignore_install = { "" },
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
    disable = { "yaml" },
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

plugin_config.setup(options)

