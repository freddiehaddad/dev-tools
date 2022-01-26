local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader= " "
vim.g.maplocalleader= " "


-- Normal --

-- Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Window Resizing
keymap("n", "<C-S-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-S-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-S-Right>", ":vertical resize +2<CR>", opts)

-- Fuzzy Searching
keymap("n", "<Leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<Leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<Leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<Leader>fh", ":Telescope help_tags<CR>", opts)


-- Git
keymap("n", "<Leader>gb", ":Gitsigns blame_line<CR>", opts)

