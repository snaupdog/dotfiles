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
	-- Lua

	-- { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
	{
		ft = "csv",
		"mechatroner/rainbow_csv",
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.opt.background = "dark"
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
		-- event = { "VeryLazy" },
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },

		vim.keymap.set("n", "<leader>n", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
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
		"altermo/ultimate-autopair.nvim",
		event = { "InsertEnter", "CmdlineEnter" },
		branch = "v0.6", --recommended as each new version will have breaking changes
		opts = {
			--Config goes here
		},
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
