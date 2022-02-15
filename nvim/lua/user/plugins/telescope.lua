local _, status_ok, plugin
local extensions = {} 

status_ok, plugin = pcall(require, "telescope")
if not status_ok then
  vim.notify("Plugin: telescope not installed!")
  return
end

local options = {
  defaults = {
    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" }
  },
  extensions = {}
}

status_ok, _ = pcall(require, "fzf_lib")
if status_ok then
  options.extensions.fzf = {
    fuzzy = true,                   -- false will only do exact matching
    override_generic_sorter = true, -- override the generic sorter
    override_file_sorter = true,    -- override the file sorter
    case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
  }
  table.insert(extensions, "fzf")
else
  vim.notify("Extension: fzf not installed!")
end

plugin.setup(options)

for _, v in pairs(extensions) do
  plugin.load_extension(v)
end

