local M = {}

local options = {
  ensure_installed = {
    'bash',
    'c',
    'cpp',
    'css',
    'dockerfile',
    'go',
    'html',
    'json',
    'lua',
    'make',
    'markdown',
    'python',
    'rust',
    'toml',
    'vim',
    'yaml',
  },
  highlight = {
    enable = true,
  },
}

local setup = function()
  require('nvim-treesitter.configs').setup(options)
end

M.setup = setup

return M
