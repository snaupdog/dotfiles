return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>]", "<cmd>Telescope find_files<CR>", desc = "fussy finder" },
		{ "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "gorilla grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "buff_as_fuck" },
		{ "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<CR>", desc = "find right now" },
	},

	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
					},
				},
			},
		})
	end,
}
