local M = {}

local on_attach = function(_, bufnr)
  local map = function(mode, lhs, rhs, opts)
    opts = vim.tbl_extend('force', { noremap = true, silent = true }, opts or {})
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
  end

  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  map('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>')
  map('n', 'gd', ':lua vim.lsp.buf.definition()<cr>')
  map('n', 'K', ':lua vim.lsp.buf.hover()<cr>')
  map('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>')
  map('n', '<C-k>', ':lua vim.lsp.buf.signature_help()<cr>')
  map('n', '<space>wa', ':lua vim.sp.buf.add_workspace_folder()<cr>')
  map('n', '<space>wr', ':lua vim.lsp.buf.remove_workspace_folder()<cr>')
  map('n', '<space>wl', ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>')
  map('n', '<space>D', ':lua vim.lsp.buf.type_definition()<cr>')
  map('n', '<space>rn', ':lua vim.lsp.buf.rename()<cr>')
  map('n', '<space>ca', ':lua vim.lsp.buf.code_action()<cr>')
  map('n', 'gr', ':lua vim.lsp.buf.references()<cr>')
  map('n', '<space>f', ':lua vim.lsp.buf.formatting()<cr>')
end

local setup_server = function(server)
  local options = {
    on_attach = on_attach,
    flags = { debounce_text_changes = 150 },
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  }

  if server.name == 'sumneko_lua' then
    options.settings = {
      Lua = {
        diagnostics = {
	  globals = { 'vim' }
	}
      }
    }
  end

  server:setup(options)
end

local setup = function()
  require('nvim-lsp-installer').on_server_ready(setup_server)

  local map = function(mode, lhs, rhs, opts)
    opts = vim.tbl_extend('force', { noremap = true, silent = true }, opts or {})
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
  end

  map('n', '[d', ':lua vim.diagnostic.goto_prev()<cr>')
  map('n', ']d', ':lua vim.diagnostic.goto_next()<cr>')
  map('n', '<space>q', ':lua vim.diagnostic.setloclist()<cr>')
end

M.setup = setup

return M
