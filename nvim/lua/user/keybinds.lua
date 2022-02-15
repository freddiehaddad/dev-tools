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

-- Telescope
local status_ok, plugin
status_ok, plugin = pcall(require, "telescope")
if status_ok then
  keymap("n", "<Leader>fb", ":Telescope buffers<CR>", options)
  keymap("n", "<Leader>ff", ":Telescope find_files<CR>", options)
  keymap("n", "<Leader>fg", ":Telescope live_grep<CR>", options)
end
