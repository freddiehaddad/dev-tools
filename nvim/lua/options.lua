local M = {}

local options = {
  cursorline = true,
  fillchars = 'eob: ',
  number = true,
  pumblend = 10,
  pumheight = 20,
  relativenumber = true,
  swapfile = false,
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
