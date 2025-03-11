return {
	"MeanderingProgrammer/render-markdown.nvim",

	event = {
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		"BufReadPre "
			.. vim.fn.expand("~")
			.. "/vaults/**.md",
		"BufNewFile " .. vim.fn.expand("~") .. "/vaults/**.md",
	},
	ft = { "markdown" },

	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},

	config = function()
		local render = require("render-markdown")
		render.setup({
			bullet = {
				enabled = true,
				icons = { "●", "○", "◆", "◇" },
				ordered_icons = {},
				left_pad = 0,
				right_pad = 1.5,
				highlight = "RenderMarkdownBullet",
			},
			checkbox = {
				unchecked = { icon = "✘ " },
				checked = { icon = "✔ ", scope_highlight = "@markup.strikethrough" },
				custom = { todo = { rendered = "◯ " } },
			},

			-- Adds heavy border
			pipe_table = { preset = "heavy" },
			heading = {
				enabled = true,
				sign = false,
				position = "overlay",
				icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
				signs = { "󰫎 " },
				width = "full",
				left_margin = 0,
				left_pad = 0,
				right_pad = 0,
				min_width = 0,
				border = false,
				border_virtual = false,
				border_prefix = false,
				above = "▄",
				below = "▀",
				backgrounds = {
					"RenderMarkdownH1Bg",
					"RenderMarkdownH2Bg",
					"RenderMarkdownH3Bg",
					"RenderMarkdownH4Bg",
					"RenderMarkdownH5Bg",
					"RenderMarkdownH6Bg",
				},
				foregrounds = {
					"RenderMarkdownH1",
					"RenderMarkdownH2",
					"RenderMarkdownH3",
					"RenderMarkdownH4",
					"RenderMarkdownH5",
					"RenderMarkdownH6",
				},
			},
		})
	end,
}
