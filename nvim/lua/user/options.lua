-- Configure options
local options = {
  cursorline = true,
  fillchars = { eob = " " },
  number = true,
  pumheight = 20,
  signcolumn = "yes",
  splitbelow = false,
  splitright = false,
  timeoutlen = 500,
  wrap = false,
}

-- Apply options
for k, v in pairs(options) do
  vim.opt[k] = v
end
