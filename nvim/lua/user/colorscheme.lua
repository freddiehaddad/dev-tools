local status_ok, plugin

-- Check for Base16 shell.
local filereadable = vim.fn.filereadable
local expand = vim.fn.expand

local colorscheme = expand("~/.vimrc_background")
if filereadable(colorscheme) then
  vim.cmd("source " .. colorscheme)

  -- DAP UI
  vim.cmd("hi DapUIVariable guifg=#5f8787")
  vim.cmd("hi DapUIScope guifg=#aaaaaa")
  vim.cmd("hi DapUIType guifg=#aaaaaa")
  vim.cmd("hi DapUIValue guifg=#5f8787")
  vim.cmd("hi DapUIModifiedValue guifg=#aaaaaa gui=bold")
  vim.cmd("hi DapUIDecoration guifg=#aaaaaa")
  vim.cmd("hi DapUIThread guifg=#999999")
  vim.cmd("hi DapUIStoppedThread guifg=#aaaaaa")
  vim.cmd("hi DapUIFrameName guifg=#888888")
  vim.cmd("hi DapUISource guifg=#aaaaaa")
  vim.cmd("hi DapUILineNumber guifg=#aaaaaa")
  vim.cmd("hi DapUIFloatBorder guifg=#aaaaaa")
  vim.cmd("hi DapUIWatchesEmpty guifg=#5f81a5")
  vim.cmd("hi DapUIWatchesValue guifg=#999999")
  vim.cmd("hi DapUIWatchesError guifg=#5f81a5")
  vim.cmd("hi DapUIBreakpointsPath guifg=#aaaaaa")
  vim.cmd("hi DapUIBreakpointsInfo guifg=#999999")
  vim.cmd("hi DapUIBreakpointsCurrentLine guifg=#999999 gui=bold")
  vim.cmd("hi DapUIBreakpointsLine guifg=#aaaaaa")

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

