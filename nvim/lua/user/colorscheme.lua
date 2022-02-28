local status_ok, colorscheme

-- Check for Base16 shell.
local filereadable = vim.fn.filereadable
local expand = vim.fn.expand

status_ok, colorscheme = pcall(expand, "~/.vimrc_background")
if not status_ok then
  vim.notify("Expand: ~/.vimrc_background failed!")
  return
end

status_ok, _ = pcall(filereadable, colorscheme)
if not status_ok then
  vim.notify("Could not read file " .. colorscheme)
  return
end

status_ok, _ = pcall(vim.cmd, "source " .. colorscheme)
if not status_ok then
  vim.notify("Colorscheme defined in " .. colorscheme .. " was not found!")
  return
end

-- scheme: "Default Dark"
-- author: "Chris Kempson (http://chriskempson.com)"
-- base00: "181818"
-- base01: "282828"
-- base02: "383838"
-- base03: "585858"
-- base04: "b8b8b8"
-- base05: "d8d8d8"
-- base06: "e8e8e8"
-- base07: "f8f8f8"
-- base08: "ab4642"
-- base09: "dc9656"
-- base0A: "f7ca88"
-- base0B: "a1b56c"
-- base0C: "86c1b9"
-- base0D: "7cafc2"
-- base0E: "ba8baf"
-- base0F: "a16946"

-- DAP UI
vim.cmd("hi DapUIVariable guifg=#ab4642")                        -- base08
vim.cmd("hi DapUIScope guifg=#a1b56c")                           -- base0b
vim.cmd("hi DapUIType guifg=#ba8baf")                            -- base0e
vim.cmd("hi DapUIValue guifg=#dc9656")                           -- base09
vim.cmd("hi DapUIModifiedValue guifg=#dc9656 gui=bold")          -- base09
vim.cmd("hi DapUIDecoration guifg=#a16946")                      -- base0b
vim.cmd("hi DapUIThread guifg=#a16946")                          -- base0b
vim.cmd("hi DapUIStoppedThread guifg=#a16946 gui=bold")          -- base0b
vim.cmd("hi DapUIFrameName guifg=#ba8baf")                       -- base0e
vim.cmd("hi DapUISource guifg=#d8d8d8")                          -- base05
vim.cmd("hi DapUILineNumber guifg=#d8d8d8")                      -- base05
vim.cmd("hi DapUIFloatBorder guifg=#d8d8d8")                     -- base05
vim.cmd("hi DapUIWatchesEmpty guifg=#dc9656")                    -- base09
vim.cmd("hi DapUIWatchesValue guifg=#dc9656")                    -- base09
vim.cmd("hi DapUIWatchesError guifg=#ab4642")                    -- base08
vim.cmd("hi DapUIBreakpointsPath guifg=#d8d8d8")                 -- base05
vim.cmd("hi DapUIBreakpointsInfo guifg=#d8d8d8")                 -- base05
vim.cmd("hi DapUIBreakpointsCurrentLine guifg=#d8d8d8 gui=bold") -- base05
vim.cmd("hi DapUIBreakpointsLine guifg=#d8d8d8")                 -- base05

