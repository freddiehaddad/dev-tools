local status_ok, plugin

status_ok, plugin = pcall(require, "nord")
if not status_ok then
  vim.notify("Plugin: nord not installed!")
  return
end

vim.g.nord_contrast                  = true  -- Make sidebars and popup menus like nvim-tree and telescope have a different background
vim.g.nord_borders                   = true  -- Make the border between verticaly split windows visable
vim.g.nord_disable_background        = false -- Disable the setting of background color so that NeoVim can use your terminal background
vim.g.nord_cursorline_transparent    = true  -- Set the cursorline transparent/visible
vim.g.nord_enable_sidebar_background = false -- Re-enables the background of the sidebar if you disabled the background of everything
vim.g.nord_italic                    = false -- Enables/disables italics

plugin.set()
