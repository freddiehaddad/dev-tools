local M = {}

local pluginConf = require "custom.plugins.configs"
local userPlugins = require "custom.plugins"

M.ui = {
  theme = "classic-dark",
  transparency = false,
  hl_override = "custom.highlights",
}

M.options = {
  cursorline = true,
  mouse = "",
  relativenumber = true,
}

M.plugins = {
  status = {
    bufferline = false,
  },

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },

  default_plugin_config_replace = {
    nvim_treesitter = pluginConf.treesitter,
    nvim_tree = pluginConf.nvimtree,
    telescope = pluginConf.telescope,
  },

  install = userPlugins,
}

return M
