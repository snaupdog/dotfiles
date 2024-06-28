return {
	"akinsho/flutter-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for better UI
		"neovim/nvim-lspconfig", -- LSP configuration
	},
	ft = { "dart" },
	-- event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("flutter-tools").setup({
			lsp = {
				on_attach = function(client, bufnr)
					local opts = { buffer = bufnr, noremap = true, silent = true }
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
					-- vim.keymap.set("n", "<leader>ra", vim.lsp.buf.range_code_action, opts)
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, opts)
				end,
				capabilities = require("cmp_nvim_lsp").default_capabilities(
					vim.lsp.protocol.make_client_capabilities()
				),
			},
		})
	end,
}
