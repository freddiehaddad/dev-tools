local M = {}

local options = {
  clipboard = 'unnamedplus',
  cursorline = true,
  expandtab = true,
  fileencoding = 'utf-8',
  fillchars = 'eob: ',
  number = true,
  numberwidth = 4,
  pumblend = 10,
  pumheight = 20,
  relativenumber = true,
  scrolloff = 4,
  shiftwidth = 2,
  showmode = false,
  sidescrolloff = 4,
  signcolumn = 'yes',
  splitbelow = true,
  splitright = true,
  swapfile = false,
  tabstop = 2,
  termguicolors = true,
  undofile = true,
}

local setup = function()
  for k, v in pairs(options) do
    vim.o[k] = v
  end
end

M.setup = setup

return M
