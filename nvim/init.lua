require("cum.core")
require("cum.lazy")

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.keymap.set("i", "<CR>", function()
			local line = vim.api.nvim_get_current_line()
			if line:match("^%s*-%s") then
				return "<Esc>o- "
			else
				return "<CR>"
			end
		end, { buffer = true, expr = true })
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.keymap.set("n", "o", function()
			local line = vim.api.nvim_get_current_line()
			if line:match("^%s*-%s") then
				return "o- "
			else
				return "o"
			end
		end, { buffer = true, expr = true })
	end,
})
