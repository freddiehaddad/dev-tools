local status_ok, plugin

status_ok, plugin = pcall(require, "lualine")
if not status_ok then
  vim.notify("Plugin: lualine not installed!")
  return
end

-- Components
local mode = {
  "mode",
  padding = { left = 1, right = 0, },
}

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  colored = true,
  update_in_insert = false,
  always_visible = true,
}

local branch = {
  "branch",
}

local filename = {
  "filename",
  path = 1,
  symbols = {
    modified = "[+]",
    readonly = "[-]",
    unnamed = "[No Name]",
  }
}

local diff = {
  "diff",
  colored = true,
}

local filetype = {
  "filetype",
  colored = true,
  icon_only = true,
}

local fileformat = {
  "fileformat",
  symbols = {
    unix = "",
    dos = "",
    mac = "",
  },
}

local location = {
  "location",
  padding = 0,
}

local scrollbar = function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return chars[index]
end

-- Configuration
local config = {
  options = {
    icons_enabled = true,
    component_separators = "",
    section_separators = { left = "", right = "" },
    theme = "nord",

  },
  sections = {
    lualine_a = { mode },
    lualine_b = { diagnostics },
    lualine_c = { branch },
    lualine_x = { filename, diff},
    lualine_y = { filetype, fileformat },
    lualine_z = { location, scrollbar },
  }
}

-- Plugin Initialization
plugin.setup(config)

