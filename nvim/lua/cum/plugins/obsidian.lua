return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	-- event = "VeryLazy",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	keys = {
		{ "<leader>oo", "<cmd>ObsidianToday<CR>", desc = "todaytasks" },
		{ "<leader>ot", "<cmd>ObsidianQuickSwitch tasks<CR>", desc = "tasksmaster" },
		{ "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", desc = "quickyswitchyyy" },
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
		daily_notes = {
			folder = "notes/dailies",
			-- Optional, if you want to change the date format for the ID of daily notes.
			date_format = "%Y-%m-%d",
			-- Optional, if you want to change the date format of the default alias of daily notes.
			alias_format = "%B %-d, %Y",
			-- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
			template = "hi.md",
		},

		templates = {
			subdir = "templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
			-- A map for custom variables, the key should be the variable and the value a function
			substitutions = {},
		},
	},
}
