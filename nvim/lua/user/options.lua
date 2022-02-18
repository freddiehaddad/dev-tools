-- Configure options
local options = {
  backup = false,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  cursorline = true,
  fillchars = { eob = " " },
  ignorecase = true,
  number = true,
  pumheight = 20,
  scrolloff = 4,
  showmode = false,
  sidescrolloff = 4,
  signcolumn = "yes",
  smartcase = true,
  splitbelow = false,
  splitright = false,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 400,
  undofile = true,
  updatetime = 300,
  wrap = false,
  writebackup = false,
}

-- Apply options
for k, v in pairs(options) do
  vim.opt[k] = v
end
