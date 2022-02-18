local status_ok, plugin

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

status_ok, plugin = pcall(require, "lspconfig")
if not status_ok then
  vim.notify("Plugin: lspconfig not found!")
  return
end

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { "gopls" }
for _, lsp in ipairs(servers) do
  plugin[lsp].setup {
    capabilities = capabilities,
  }
end

status_ok, plugin = pcall(require, "nvim-lsp-installer")
if not status_ok then
  vim.notify("Plugin: nvim-lsp-installer not found!")
  return
end

plugin.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)
