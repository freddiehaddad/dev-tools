local M = {}

local load_config = function(null_ls)
  local formatting = null_ls.builtins.formatting
  local diagnostics = null_ls.builtins.diagnostics
  local options = {
    debug = false,
    sources = {
      formatting.stylua.with({
        extra_args = {
          '--indent-type',
          'Spaces',
          '--indent-width',
          '2',
          '--line-endings',
          'Unix',
          '--quote-style',
          'ForceSingle',
          '--column-width',
          '80',
        },
      }),
      formatting.gofmt,
      diagnostics.codespell,
    },
  }

  return options
end

local setup = function()
  local null_ls = require('null-ls')
  local config = load_config(null_ls)
  null_ls.setup(config)
end

M.setup = setup

return M
