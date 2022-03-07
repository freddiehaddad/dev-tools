local M = {}

local options = {
  direction = 'vertical',
  open_mapping = [[<c-t>]],
  size = function(term)
    if term.direction == 'horizontal' then
      return 15
    elseif term.direction == 'vertical' then
      return vim.o.columns * 0.25
    end
  end,
}

local setup = function()
  require('toggleterm').setup(options)

  function _G.set_terminal_keymaps()
    local opts = { noremap = true }
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<c-\><c-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<c-\><c-n>]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<c-h>', [[<c-\><c-n><c-w>h]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<c-j>', [[<c-\><c-n><c-w>j]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<c-k>', [[<c-\><c-n><c-w>k]], opts)
    vim.api.nvim_buf_set_keymap(0, 't', '<c-l>', [[<c-\><c-n><c-w>l]], opts)
  end

  vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')
end

M.setup = setup

return M
