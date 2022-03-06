local M = {}

local options = {}

local setup = function()
  require('telescope').setup(options)

  local map = function(mode, lhs, rhs, opts)
    opts = vim.tbl_extend('force', { noremap = true, silent = true }, opts or {})
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
  end

  map('n', '<leader>ff', ':Telescope find_files<cr>')
  map('n', '<leader>fb', ':Telescope buffers<cr>')
  map('n', '<leader>fg', ':Telescope live_grep<cr>')
  map('n', '<leader>fh', ':Telescope help_tags<cr>')
end

M.setup = setup

return M
