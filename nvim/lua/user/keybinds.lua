local status_ok, _

-- Alias to fully qualified name for keymap API
local keymap = vim.api.nvim_set_keymap

-- Default keymap options
local options = { noremap = true, silent = true }

-- Configure leader key
keymap("", "<Space>", "<NOP>", options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", options)
keymap("n", "<C-j>", "<C-w>j", options)
keymap("n", "<C-k>", "<C-w>k", options)
keymap("n", "<C-l>", "<C-w>l", options)

-- DAP
status_ok, _ = pcall(require, "telescope")
if status_ok then
  keymap("n", "<F5>", ":lua require'dap'.continue()<CR>", options)
  keymap("n", "<F10>", ":lua require'dap'.step_over()<CR>", options)
  keymap("n", "<F11>", ":lua require'dap'.step_into()<CR>", options)
  keymap("n", "<F12>", ":lua require'dap'.step_out()<CR>", options)
  keymap("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>", options)
end

-- LSP
status_ok, _ = pcall(require, "lspconfig")
if status_ok then
  keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', options)
end

-- Telescope
status_ok, _ = pcall(require, "telescope")
if status_ok then
  keymap("n", "<Leader>fb", ":Telescope buffers<CR>", options)
  keymap("n", "<Leader>ff", ":Telescope find_files<CR>", options)
  keymap("n", "<Leader>fg", ":Telescope live_grep<CR>", options)
end

-- GitSigns
status_ok, _ = pcall(require, "gitsigns")
if status_ok then
  keymap("n", "<Leader>gb", ":Gitsigns blame_line<CR>", options)
end

-- LazyGit
status_ok, _ = pcall(require, "lazygit")
if status_ok then
  keymap("n", "<Leader>lg", ":LazyGit<CR>", options)
end
