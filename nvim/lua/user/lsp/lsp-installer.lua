local plugin_name = "nvim-lsp-installer"
local status_ok, plugin = pcall(require, plugin_name)
if not status_ok then
  vim.notify('plugin: " .. plugin_name .. " not found!')
  return
end

local opts = {
  on_attach = require("user.lsp.handlers").on_attach,
  capabilities = require("user.lsp.handlers").capabilities,
}

local function on_server_ready(server)
  if server.name == "jsonls" then
	 	local jsonls_opts = require("user.lsp.settings.jsonls")
	 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	 end

  if server.name == "sumneko_lua" then
	 	local sumneko_opts = require("user.lsp.settings.sumneko_lua")
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

  server:setup(opts)
end

-- Register a handler that will be called for all installed servers.
plugin.on_server_ready(on_server_ready)

