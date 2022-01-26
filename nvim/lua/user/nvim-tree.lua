vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "✗",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "★",
    deleted = "",
    ignored = "◌"
  },
  folder = {
    arrow_open = "▼",
    arrow_closed = "▶",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  }
}

vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 0,
}

vim.g.nvim_tree_git_hl = 0
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_special_files = {}

local plugin_name = "nvim-tree"
local status_ok, plugin = pcall(require, plugin_name)
if not status_ok then
  vim.notify("plugin: " .. plugin_name .. " not found!")
  return
end

local plugin_config_name = plugin_name .. ".config"
local config_status_ok, plugin_config = pcall(require, plugin_config_name)
if not config_status_ok then
  vim.notify("plugin: " .. plugin_config_name .. " not found!")
  return
end

local tree_cb = plugin_config.nvim_tree_callback

local options = {
  auto_close = true,
  update_cwd = true,
  hijack_cursor = true,
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  view = {
    signcolumn = "no",
    auto_resize = true,
    mappings = {
      list = {
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
  },
}

plugin.setup(options)

