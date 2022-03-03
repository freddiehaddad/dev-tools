local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "go",
    "json",
    "lua",
    "markdown",
    "vim",
    "yaml",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
}

M.telescope = {
  defaults = {
    prompt_prefix = "   ",
  }
}

return M
