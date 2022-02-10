--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
vim.opt.whichwrap:remove("h")
vim.opt.whichwrap:remove("l")

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = false
lvim.builtin.notify.active = false
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
  "markdown",
  "go",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.indent = {
  enable = true,
  disable = { "go" }
}

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---@usage Select which servers should be configured manually. Requires `:LvimCacheRest` to take effect.
-- See the full default list `:lua print(vim.inspect(lvim.lsp.override))`
-- vim.list_extend(lvim.lsp.override, { "pyright" })

-- ---@usage setup a server -- see: https://www.lunarvim.org/languages/#overriding-the-default-configuration
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pylsp", opts)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Freddie Haddad Configuration Start

-- Disable Barbar plugin (causes it to be unisntalled on PackerSync)
lvim.builtin.bufferline.active = false

-- Telescope
lvim.builtin.telescope.defaults.borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" }

-- Gitsigns
lvim.builtin.gitsigns.opts.preview_config.border = "single"

-- Editor Settings
vim.opt.showtabline = 0
vim.opt.fillchars:append("eob: ")
vim.opt.mouse = ""
vim.opt.cmdheight = 1
vim.opt.clipboard:remove("unnamedplus")
vim.wo.wrap = true

-- NvimTree
lvim.builtin.nvimtree.show_icons.folder_arrows = 0

-- Lualine
local scrollbar = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = false,
	update_in_insert = false,
	always_visible = true,
}

local diff = {
	"diff",
	colored = false,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
}

local filetype = {
	"filetype",
	icons_enabled = true,
	-- icon = nil,
}

local location = {
	"location",
	padding = 0,
}

lvim.builtin.lualine.options.section_separators = { left = '', right = '' }
lvim.builtin.lualine.options.component_separators = { left = '', right = '' }
lvim.builtin.lualine.options.theme = "nord"

lvim.builtin.lualine.sections = {
  lualine_a = { branch },
  lualine_b = { diagnostics },
  lualine_c = { "mode" },
  lualine_x = { diff},
  lualine_y = { filetype, "encoding" },
  lualine_z = { location, scrollbar },
}

-- Additional Plugins
lvim.plugins = {
    { "shaunsingh/nord.nvim" },
    { "nvim-telescope/telescope-dap.nvim" },
    { "rcarriga/nvim-dap-ui" },
    { "leoluz/nvim-dap-go"}
}

-- Configure Theme
local function setup_theme()
  local plugin_name = "nord"
  local status_ok, plugin = pcall(require, plugin_name)
  if not status_ok then
    vim.notify("plugin: " .. plugin_name .. " not found!")
    return
  end
  vim.g.nord_contrast = false
  vim.g.nord_borders = false
  vim.g.nord_disable_background = true
  vim.g.nord_cursorline_transparent = false
  vim.g.nord_enable_sidebar_background = true
  vim.g.nord_italic = false
  plugin.set()
  lvim.colorscheme = "nord"
end

setup_theme()

-- Configure Debugging
local function setup_debugging()
  lvim.builtin.dap.active = true

  local status_ok
  local dap_plugin_name = "dap"
  local dapui_plugin_name = "dapui"
  local dapgo_plugin_name = "dap-go"
  local dap, dapgo, dapui, telescope

  status_ok, telescope = pcall(require, "telescope")
  if not status_ok then
    vim.notify("plugin: " .. "telescope" .. " not found!")
    return
  end

  status_ok, _ = pcall(telescope.load_extension, "dap")
  if not status_ok then
    vim.notify("plugin: " .. "telescope-dap" .. " not found!")
    return
  end

  status_ok, dap = pcall(require, dap_plugin_name)
  if not status_ok then
    vim.notify("plugin: " .. dap_plugin_name .. " not found!")
    return
  end

  status_ok, dapgo = pcall(require, dapgo_plugin_name)
  if not status_ok then
    vim.notify("plugin: " .. dapgo_plugin_name .. " not found!")
    return
  end

  dapgo.setup()

  status_ok, dapui = pcall(require, dapui_plugin_name)
  if not status_ok then
    vim.notify("plugin: " .. dapui_plugin_name .. " not found!")
    return
  end

  dapui.setup()

  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end
end

setup_debugging()
-- Freddie Haddad Configuration End

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands.custom_groups = {
  { "BufWinEnter", "*.go", "setlocal ts=8 sw=8 noet" },
}
