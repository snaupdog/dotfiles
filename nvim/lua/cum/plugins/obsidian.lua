return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	event = {
		"BufReadPre " .. vim.fn.expand("~") .. "/vaults/**.md",
		"BufNewFile " .. vim.fn.expand("~") .. "/vaults/**.md",
	},

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	opts = {

		workspaces = {
			{
				name = "personal",
				path = "~/vaults/snau",
				overrides = {
					notes_subdir = "notes",
				},
			},
		},
	},
}
