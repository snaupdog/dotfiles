-- vim.cmd("colorscheme habamax")
-- vim.cmd("highlight Normal guibg = #0000ff")

local options = {

	relativenumber = true,
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	smartindent = true,
	wrap = true,
	swapfile = false,
	backup = false,
	undodir = os.getenv("HOME") .. "/.vim/undodir",
	undofile = true,
	hlsearch = false,
	incsearch = true,
	termguicolors = true,
	scrolloff = 8,
	signcolumn = "yes",
	updatetime = 50,
	splitright = true, -- split vertical window to the right
	splitbelow = true, -- split horizontal window to the bottom
	number = true,
	completeopt = { "menu", "menuone", "noselect" },
	smartcase = true,
	ignorecase = true,
	errorbells = false,
	clipboard = "unnamedplus",
	fileencoding = "utf8",
	showmode = false,
	autoindent = true,
	smarttab = true,
	endofline = false,
	fixendofline = false,
	autoread = true,
	autowrite = true,
	cmdheight = 1,
	showtabline = 0,
	laststatus = 2,
	hidden = true,
	conceallevel = 1,
}

-- don't auto commenting new lines
vim.cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])

for i, j in pairs(options) do
	vim.opt[i] = j
end
