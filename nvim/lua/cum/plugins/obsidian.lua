return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	ui = { enable = false },
	lazy = true,
	event = {
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		"BufReadPre "
			.. vim.fn.expand("~")
			.. "/vaults/**.md",
		"BufNewFile " .. vim.fn.expand("~") .. "/vaults/**.md",
	},
	-- event = "VeryLazy",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	keys = {
		{ "<leader>oo", "<cmd>ObsidianToday<CR>", desc = "todaytasks" },
		{ "<leader>ot", "<cmd>ObsidianQuickSwitch tasks<CR>", desc = "tasksmaster" },
		{ "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", desc = "quickyswitchyyy" },
	},

	mappings = {
		["<leader>ch"] = {
			action = function()
				return require("obsidian").util.toggle_checkbox()
			end,
			opts = { buffer = true },
		},
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
			template = "dailies.md",
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
