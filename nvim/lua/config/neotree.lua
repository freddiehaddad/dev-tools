local M = {}

local options = {}

local setup = function()
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  vim.fn.sign_define(
    'DiagnosticSignError',
    { text = ' ', texthl = 'DiagnosticSignError' }
  )
  vim.fn.sign_define(
    'DiagnosticSignWarn',
    { text = ' ', texthl = 'DiagnosticSignWarn' }
  )
  vim.fn.sign_define(
    'DiagnosticSignInfo',
    { text = ' ', texthl = 'DiagnosticSignInfo' }
  )
  vim.fn.sign_define(
    'DiagnosticSignHint',
    { text = '', texthl = 'DiagnosticSignHint' }
  )

  require('neo-tree').setup(options)

  local map = function(mode, lhs, rhs, opts)
    opts = vim.tbl_extend(
      'force',
      { noremap = true, silent = true },
      opts or {}
    )
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
  end

  map('n', '<leader>t', ':Neotree toggle<cr>')
end

M.setup = setup

return M
