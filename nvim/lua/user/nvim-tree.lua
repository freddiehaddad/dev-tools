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

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  vim.notify("nvim-tree plugin not found!")
  return
end

nvim_tree.setup({
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
  },
})

-- vim.api.nvim_exec([[
--   augroup nvim_tree_auto_refresh
--   autocmd! * <buffer>
--   autocmd BufAdd * NvimTreeRefresh
--   augroup END
-- ]], false)
