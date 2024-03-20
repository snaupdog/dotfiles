return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
	},
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {

				-- web dev

				"cssls",
				"html",
				"emmet_language_server",
				"eslint",
				"tsserver",
				"tailwindcss",

				"lua_ls",
				"pylsp",
				"clangd",
				"gopls",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true, -- not the same as ensure_installed
		})

		local on_attach = function(client, bufnr)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gr", vim.require("telescope.builtin").lsp_references, {})
		end

		---@diagnostic disable-next-line: undefined-global
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

		-- WEB DEV LSPs
		require("lspconfig")["cssls"].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		require("lspconfig")["html"].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		require("lspconfig")["emmet_language_server"].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		require("lspconfig")["eslint"].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		require("lspconfig")["tsserver"].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		require("lspconfig")["marksman"].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		require("lspconfig")["tailwindcss"].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		require("lspconfig")["pylsp"].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		require("lspconfig")["lua_ls"].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		require("lspconfig")["gopls"].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})

		require("lspconfig")["clangd"].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	end,
}
