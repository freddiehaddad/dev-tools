local status_ok, plugin

status_ok, plugin = pcall(require, "lazygit")
if not status_ok then
  vim.notify("Plugin: lazygit not installed!")
  return
end

vim.g.lazygit_floating_window_corner_chars = { "┌", "┐", "└", "┘" }
