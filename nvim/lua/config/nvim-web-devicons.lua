local M = {}

local options = {
  default = true,
}

local setup = function()
  require('nvim-web-devicons').setup(options)
end

M.setup = setup

return M
