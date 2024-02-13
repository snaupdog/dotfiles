vim.g.mapleader = " "
vim.g.localleader = ","

local silent = { silent = true }
local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap


keymap.set("n", "<leader>n", ":lua MiniFiles.open()<CR>")

-- Resizing panes
map("n", "<Left>", ":vertical resize +1<CR>", opts)
map("n", "<Right>", ":vertical resize -1<CR>", opts)
map("n", "<Up>", ":resize -1<CR>", opts)
map("n", "<Down>", ":resize +1<CR>", opts)

-- Move selected line / block of text in visual mode
map("x", "K", ":move '<-2<CR>gv-gv", silent)
map("x", "J", ":move '>+1<CR>gv-gv", silent)

-- Keep visual mode indenting
map("v", "<", "<gv", silent)
map("v", ">", ">gv", silent)

