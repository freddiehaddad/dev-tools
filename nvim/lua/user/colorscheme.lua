local status_ok, plugin

-- Check for Base16 shell.
local filereadable = vim.fn.filereadable
local expand = vim.fn.expand

local colorscheme = expand("~/.vimrc_background")
if filereadable(colorscheme) then
  vim.cmd("source " .. colorscheme)
  return
end

status_ok, plugin = pcall(require, "base16-vim")
if status_ok then
  vim.cmd("colorscheme base16-black-metal-dark-funeral")
  return
end

status_ok, plugin = pcall(require, "nord")
if status_ok then
  vim.g.nord_contrast                  = true  -- Make sidebars and popup menus like nvim-tree and telescope have a different background
  vim.g.nord_borders                   = true  -- Make the border between verticaly split windows visable
  vim.g.nord_disable_background        = false -- Disable the setting of background color so that NeoVim can use your terminal background
  vim.g.nord_cursorline_transparent    = true  -- Set the cursorline transparent/visible
  vim.g.nord_enable_sidebar_background = false -- Re-enables the background of the sidebar if you disabled the background of everything
  vim.g.nord_italic                    = false -- Enables/disables italics

  plugin.set()
  return
end

