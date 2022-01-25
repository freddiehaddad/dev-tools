local status_ok, plugin = pcall(require, "nvim-web-devicons")
if not status_ok then
  vim.notify("nvim-web-devicons plugin not found!")
  return
end

plugin.setup({
    default = true,
})

