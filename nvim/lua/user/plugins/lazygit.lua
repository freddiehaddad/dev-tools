local status_ok, _

status_ok, _ = pcall(require, "lazygit")
if not status_ok then
  vim.notify("Plugin: lazygit not installed!")
  return
end

vim.g.lazygit_floating_window_corner_chars = { "┌", "┐", "└", "┘" }
vim.g.lazygit_floating_window_use_plenary = 0
