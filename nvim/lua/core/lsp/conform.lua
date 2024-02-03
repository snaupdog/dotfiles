require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { { "prettierd", "prettier" } },
		c = { "astyle" },
		css = { { "prettierd", "prettier" } },
		graphql = { { "prettierd", "prettier" } },
		html = { { "prettierd", "prettier" } },
		javascriptreact = { { "prettierd", "prettier" } },
		json = { { "prettierd", "prettier" } },
		less = { { "prettierd", "prettier" } },
		markdown = { { "prettierd", "prettier" } },
		scss = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		typescriptreact = { { "prettierd", "prettier" } },
		yaml = { { "prettierd", "prettier" } },
	},
})
vim.api.nvim_create_autocmd("BufWritePre", {

	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
