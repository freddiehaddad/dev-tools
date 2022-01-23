-- Automatically reload this file when updated
vim.cmd([[
  augroup packer_keybinds_file
    autocmd!
    autocmd BufWritePost keybinds.lua source <afile>
  augroup end
]])

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader= ' '

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Telescope / Fuzzy Finder
map("n", "<Leader>fb", "<CMD>Telescope buffers<CR>")
map("n", "<Leader>ff", "<CMD>Telescope find_files<CR>")
map("n", "<Leader>fg", "<CMD>Telescope live_grep<CR>")
map("n", "<Leader>fh", "<CMD>Telescope help_tags<CR>")

-- Nvim Tree
map("n", "<Leader>nt", "<CMD>NvimTreeToggle<CR>")
map("n", "<Leader>nf", "<CMD>NvimTreeFindFile<CR>")

