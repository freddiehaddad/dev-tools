local M = {}

local setup = function()
  local map = function(mode, lhs, rhs, opts)
    opts = vim.tbl_extend(
      'force',
      { noremap = true, silent = true },
      opts or {}
    )
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
  end

  map('n', '<F5>', ':lua require("dap").continue()<cr>')
  map('n', '<F10>', ':lua require("dap").step_over()<cr>')
  map('n', '<F11>', ':lua require("dap").step_into()<cr>')
  map('n', '<F12>', ':lua require("dap").step_out()<cr>')
  map('n', '<leader>b', ':lua require("dap").toggle_breakpoint()<cr>')
  map(
    'n',
    '<leader>B',
    ':lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>'
  )
  map(
    'n',
    '<leader>lp',
    ':lua require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<cr>'
  )
  map('n', '<leader>dr', ':lua require("dap").repl.open()<cr>')
  map('n', '<leader>dl', ':lua require("dap").run_last()<cr>')
end

M.setup = setup

return M
