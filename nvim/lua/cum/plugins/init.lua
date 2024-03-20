return {
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
