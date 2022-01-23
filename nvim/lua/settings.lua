-- Automatically reload this file when updated
vim.cmd([[
  augroup reload_settings_file
    autocmd!
    autocmd BufWritePost settings.lua source <afile>
  augroup end
]])

require('nord').set()

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.fillchars = 'eob: '
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.signcolumn = 'number'
