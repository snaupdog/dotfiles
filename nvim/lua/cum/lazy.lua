local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {
	git = { log = { "--since=3 days ago" } },
	ui = { custom_keys = { false } },
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
				"rplugin",
				"editorconfig",
				"matchparen",
				"matchit",
			},
		},
	},
	checker = { enabled = false },
	change_detection = {
		notify = false, -- get a notification when changes are found
	},
}

require("lazy").setup({ { import = "cum.plugins" }, { import = "cum.plugins.lsp" } }, opts)
