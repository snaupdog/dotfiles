return {
	"xiyaowong/transparent.nvim",
	-- cmd = "TransparentToggle",

	config = function()
		local transparent = require("transparent")

		transparent.setup({

			groups = { -- table: default groups
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			extra_groups = {
				"NormalFloat",
			}, -- table: additional groups that should be cleared
			exclude_groups = {}, -- table: groups you don't want to clear
		})
	end,
}
