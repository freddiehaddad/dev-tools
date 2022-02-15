local status_ok, plugin, config

status_ok, plugin = pcall(require, "nvim-treesitter")
if not status_ok then
  vim.notify("Plugin: nvim-treesitter not installed!")
  return
end

status_ok, config = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  vim.notify("Config: nvim-treesitter.configs not installed!")
  return
end

config.setup({
  highlight = {
    enable = true,
  },
})

