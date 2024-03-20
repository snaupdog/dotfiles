return {
	"nvim-lualine/lualine.nvim",
	event = { "InsertEnter" },

	config = function()
		local lualine = require("lualine")
		lualine.setup({
			-- options = {
			--   theme = my_lualine_theme,
			-- },
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = { "filename" },

				lualine_x = { "diff", "filetype", "diagnostics" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
