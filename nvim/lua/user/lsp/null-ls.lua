local plugin_name = "null-ls"

local status_ok, plugin = pcall(require, plugin_name)
if not status_ok then
  vim.notify("plugin: " .. plugin_name .. " not found!")
  return
end

local formatting = plugin.builtins.formatting
local completion = plugin.builtins.completion

local config = {
  debug = false,
  sources = {
    formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
    formatting.black.with({ extra_args = { "--fast" } }),
    formatting.stylua,
    formatting.autopep8,
    completion.spell,
  },
}

plugin.setup(config)

