return {
	-- {
	-- 	"kylechui/nvim-surround",
	-- 	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	-- 	event = "InsertEnter",
	-- 	config = function()
	-- 		require("nvim-surround").setup({
	-- 			-- Configuration here, or leave empty to use defaults
	-- 		})
	-- 	end,
	-- },
	--
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme oxocarbon]])
		end,
	},

	{
		"folke/noice.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
	},

	{
		"stevearc/oil.nvim",
		cmd = {
			"Oil",
		},
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },

		vim.keymap.set("n", "<leader>n", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
	},

	{
		"norcalli/nvim-colorizer.lua",

		keys = {
			{ "col", "<cmd>ColorizerToggle<CR>", desc = "colorizer" },
		},
	},

	{
		"nvim-lua/plenary.nvim", -- lua functions that many plugins use
		event = "InsertEnter",
	},

	{
		"MunifTanjim/nui.nvim",
		event = "InsertEnter",
	},

	{
		"windwp/nvim-autopairs",
		event = { "BufReadPre", "BufNewFile" },
		opts = {}, -- this is equalent to setup({}) function
	},

	{
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
		event = "InsertEnter",
	},
	{
		"eandrju/cellular-automaton.nvim",

		keys = {
			{ "scr", "<cmd>CellularAutomaton scramble<CR>", desc = " scramble" },
			{ "rai", "<cmd>CellularAutomaton make_it_rain<CR>", desc = " scramble" },
		},
	},
}
