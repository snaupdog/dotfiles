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

	{
		ft = "csv",
		"mechatroner/rainbow_csv",
	},
	-- {
	-- 	"nyoom-engineering/oxocarbon.nvim",
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		vim.opt.background = "dark"
	-- 		-- vim.cmd([[colorscheme oxocarbon]])
	-- 	end,
	-- },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.opt.background = "dark"
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{
		"folke/noice.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		-- config = function()
		-- 	require("lualine").setup({
		-- 		sections = {
		-- 			lualine_x = {
		-- 				{
		-- 					require("noice").api.statusline.mode.get,
		-- 					cond = require("noice").api.statusline.mode.has,
		-- 					color = { fg = "#ff9e64" },
		-- 				},
		-- 			},
		-- 		},
		-- 	})
		-- end,
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
		event = { "InsertEnter" },
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
