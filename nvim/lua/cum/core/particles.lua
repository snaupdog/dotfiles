-- Function to create the floating window
local function break_habits_window()
	local width = 50
	local height = 10

	-- Create a new buffer
	local buf = vim.api.nvim_create_buf(false, true)

	-- Get the current UI dimensions
	local ui = vim.api.nvim_list_uis()[1]

	-- Define window options
	local opts = {
		relative = "editor",
		width = width,
		height = height,
		col = (ui.width / 2) - (width / 2),
		row = (ui.height / 2) - (height / 2),
		anchor = "NW",
		style = "minimal",
	}

	-- Open the floating window
	vim.api.nvim_open_win(buf, true, opts)
end

-- Optionally, you can map a key to open the floating window
vim.api.nvim_set_keymap("n", "<leader>b", ":lua break_habits_window()<CR>", { noremap = true, silent = true })
