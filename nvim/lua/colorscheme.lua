local M = {}

-- Default error handling function
M.setup = function()
  vim.notify('Error loading colorscheme.lua')
end

-- Colorscheme configuration
local setup = function()
  local source = '~/.vimrc_background'
  local status_ok, _ = pcall(vim.cmd, 'source ' .. source)
  if not status_ok then
    vim.notify('Error sourcing ' .. source)
    return
  end
  vim.cmd('hi VertSplit guibg=bg guifg=bg')
end

M.setup = setup

return M
