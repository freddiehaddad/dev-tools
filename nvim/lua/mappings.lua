local M = {}

local setup = function()
  local map = function(mode, lhs, rhs, opts)
    opts = vim.tbl_extend('force', { noremap = true, silent = true }, opts or {})
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
  end

  -- Configure leader key
  vim.g.mapleader = ' '
  vim.g.maplocalleader = ' '
  map('', '<space>', '<nop>')

  -- Window splitting
  map('n', '<leader>sv', ':vsplit<cr>')
  map('n', '<leader>sh', ':split<cr>')

  -- Window navigation
  map('n', '<c-h>', '<c-w>h')
  map('n', '<c-j>', '<c-w>j')
  map('n', '<c-k>', '<c-w>k')
  map('n', '<c-l>', '<c-w>l')

  -- Terminal
  map('n', '<c-t>', ':terminal<cr>')
  map('t', '<esc>', '<c-\\><c-n>')
end

M.setup = setup

return M

