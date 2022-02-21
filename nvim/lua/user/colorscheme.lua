local status_ok, plugin

-- Check for Base16 shell.
local filereadable = vim.fn.filereadable
local expand = vim.fn.expand

local colorscheme = expand("~/.vimrc_background")
if filereadable(colorscheme) then
  vim.cmd("source " .. colorscheme)

  -- DAP UI
  vim.cmd("hi DapUIVariable guifg=#ab4642")
  vim.cmd("hi DapUIScope guifg=#a1b56c")
  vim.cmd("hi DapUIType guifg=#ba8baf")
  vim.cmd("hi DapUIValue guifg=#dc9656")
  vim.cmd("hi DapUIModifiedValue guifg=#dc9656 gui=bold")
  vim.cmd("hi DapUIDecoration guifg=#a16946")
  vim.cmd("hi DapUIThread guifg=#a16946")
  vim.cmd("hi DapUIStoppedThread guifg=#a16946 gui=bold")
  vim.cmd("hi DapUIFrameName guifg=#ba8baf")
  vim.cmd("hi DapUISource guifg=#d8d8d8")
  vim.cmd("hi DapUILineNumber guifg=#d8d8d8")
  vim.cmd("hi DapUIFloatBorder guifg=#d8d8d8")
  vim.cmd("hi DapUIWatchesEmpty guifg=#dc9656")
  vim.cmd("hi DapUIWatchesValue guifg=#dc9656")
  vim.cmd("hi DapUIWatchesError guifg=#ab4642")
  vim.cmd("hi DapUIBreakpointsPath guifg=#d8d8d8")
  vim.cmd("hi DapUIBreakpointsInfo guifg=#d8d8d8")
  vim.cmd("hi DapUIBreakpointsCurrentLine guifg=#d8d8d8 gui=bold")
  vim.cmd("hi DapUIBreakpointsLine guifg=#d8d8d8")

  return
end

vim.notify("Using default colorscheme")

