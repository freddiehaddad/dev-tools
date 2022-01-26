local plugin_name = "lspconfig"

local status_ok, _ = pcall(require, plugin_name)
if not status_ok then
  vim.notify("plugin: " .. plugin_name .. " not found!")
  return
end

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")

