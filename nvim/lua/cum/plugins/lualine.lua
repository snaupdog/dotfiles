return {

	"nvim-lualine/lualine.nvim",
	-- event = "VeryLazy",
	event = { "InsertEnter" },
	-- event = { "CmdlineEnter" },
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

	config = function()
		require("lualine").setup({
			sections = {
				lualine_x = {
					{
						require("noice").api.statusline.mode.get,
						cond = require("noice").api.statusline.mode.has,
						color = { fg = "#ff9e64" },
					},
				},
			},
		})
	end,
}
