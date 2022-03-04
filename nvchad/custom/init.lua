local map = require("core.utils").map

map("n", "<leader>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>")
