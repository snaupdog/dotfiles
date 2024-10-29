return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	opts = function()
		return {
			options = {
				component_separators = { left = " ", right = " " },
				section_separators = { left = " ", right = " " },
				theme = "auto",
				globalstatus = true,
				disabled_filetypes = { statusline = { "dashboard", "alpha" } },
			},
			sections = {
				lualine_a = { { "mode", icon = "  " } },
				lualine_b = { { "branch", icon = "" } },
				lualine_c = {
					{
						"progress",
					},
				},

				lualine_x = {
					{ "diff" },
				},
				lualine_y = {
					{
						"diagnostics",
						-- symbols = { error = " ", warn = " ", info = " ", hint = " " },
						symbols = {
							error = " ",
							warn = " ",
							info = " ",
							hint = "󰝶 ",
						},
					},
					{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
					{ "filename", padding = { left = 1, right = 0 } },
				},
				lualine_z = {
					{
						"datetime",
						style = "  %X",
					},
				},
			},

			extensions = { "lazy", "mason" },
		}
	end,
}
