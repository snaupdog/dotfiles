-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	require("packer").startup(function(use)
		use({ "rose-pine/neovim", as = "rose-pine" })
	end)
	-- use "ziontee113/color-picker.nvim"
	use("wbthomason/packer.nvim")
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("stevearc/conform.nvim")
	use("L3MON4D3/LuaSnip")
	use("rafamadriz/friendly-snippets")
	use("saadparwaiz1/cmp_luasnip")

	use("folke/tokyonight.nvim")
	use("sainnhe/everforest")
	use("sainnhe/gruvbox-material")

	use("xiyaowong/transparent.nvim")
	use("eandrju/cellular-automaton.nvim")

	use("christoomey/vim-tmux-navigator")

	use("nvim-telescope/telescope.nvim")
	use("kylechui/nvim-surround")
	use("windwp/nvim-autopairs")
	use("numToStr/Comment.nvim")
	use("nvim-lualine/lualine.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-lua/plenary.nvim")
	use("NvChad/nvim-colorizer.lua")
	use("MunifTanjim/nui.nvim")
	use("folke/noice.nvim")
	use("echasnovski/mini.nvim")

	use({
		"epwalsh/obsidian.nvim",
		tag = "*", -- recommended, use latest release instead of latest commit
		requires = {
			-- Required.
			"nvim-lua/plenary.nvim",

			-- see below for full list of optional dependencies 👇
		},
		config = function()
			require("obsidian").setup({
				workspaces = {
					{
						name = "snau",
						path = "~/vaults/snau",
					},
					{
						name = "brain",
						path = "~/vaults/brain",
					},
				},

				-- see below for full list of options 👇
			})
		end,
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
