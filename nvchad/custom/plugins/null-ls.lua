local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {
  -- Markup
  b.formatting.deno_fmt,
  b.formatting.prettierd.with { filetypes = { "json", "markdown", "yaml" } },

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- Go
  b.formatting.gofmt,
  b.formatting.goimports,
  b.formatting.golines,
  b.diagnostics.revive,
}

local M = {}

M.setup = function()
  null_ls.setup {
    debug = true,
    sources = sources,
  }
end

return M
