local status_ok, plugin

status_ok, plugin = pcall(require, "nvim-lsp-installer")
if not status_ok then
  vim.notify("Plugin: nvim-lsp-installer not found!")
end

plugin.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)
