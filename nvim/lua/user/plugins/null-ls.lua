local status_ok, plugin

status_ok, plugin = pcall(require, "null-ls")
if not status_ok then
  vim.notify("Plugin: null-ls not found!")
  return
end

local options = {
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd([[
        augroup LspFormatting
        autocmd! * <buffer>
        autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
        augroup END
      ]])
    end
  end,
  sources = {
    filetypes = {},
    plugin.builtins.code_actions.gitsigns,
    plugin.builtins.formatting.codespell,
    plugin.builtins.formatting.gofmt,
  }
}

plugin.setup(options)
