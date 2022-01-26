local plugin_name = "lualine"

local status_ok, plugin = pcall(require, plugin_name)
if not status_ok then
  vim.notify("plugin: " .. plugin_name .. " not found!")
  return
end

local colorscheme = vim.g.colors_name

-- display a progress representing line position in the file as a percent.
local progress = function()
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

local mode = {
	"mode",
	--fmt = function(str)
	--	return "-- " .. str .. " --"
	--end,
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

local config = {
  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    theme = colorscheme,
  },
  sections = {
    lualine_a = { branch },
		lualine_b = { diagnostics },
		lualine_c = { mode },
    lualine_x = { diff},
    lualine_y = { filetype, "encoding" },
    lualine_z = { location, progress },
  }
}

plugin.setup(config)

