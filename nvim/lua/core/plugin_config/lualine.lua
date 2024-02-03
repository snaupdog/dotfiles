local custom_gruvbox = require("lualine.themes.gruvbox_light")

-- Change the background of lualine_c section for normal mode

require("lualine").setup({
	options = { theme = custom_gruvbox },
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = { "filename" },

		lualine_x = { "diff", "filetype", "diagnostics" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})
