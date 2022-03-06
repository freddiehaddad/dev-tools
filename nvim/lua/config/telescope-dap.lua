local M = {}

local setup = function()
  require('telescope').load_extension('dap')

  local map = function(mode, lhs, rhs, opts)
    opts = vim.tbl_extend('force', { noremap = true, silent = true }, opts or {})
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
  end

  map('n', '<leader>db', ':Telescope dap list_breakpoints<cr>')
  map('n', '<leader>dc', ':Telescope dap commands<cr>')
end

M.setup = setup

return M
