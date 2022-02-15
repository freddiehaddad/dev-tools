local _, status_ok, config

status_ok, _ = pcall(require, "nvim-treesitter")
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
    enable = false,
  },
})

