vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.keymap.set("i", "<CR>", function()
			local line = vim.api.nvim_get_current_line()
			if line:match("^%s*-%s") then
				return "<Esc>o- "
			else
				return "<CR>"
			end
		end, { buffer = true, expr = true })
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.keymap.set("n", "o", function()
			local line = vim.api.nvim_get_current_line()
			if line:match("^%s*-%s") then
				return "o- "
			else
				return "o"
			end
		end, { buffer = true, expr = true })
	end,
})

vim.g.mapleader = " "
vim.g.localleader = ","

local silent = { silent = true }
local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("n", "<C-d>", '"_dd', opts)

map("n", "<C-w>", ":w<CR>", opts)
-- map("i", "<C-w>", ":w<CR>", opts)

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
