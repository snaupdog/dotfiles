return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",

        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {
                    "c",
                    "vim",
                    "lua",
                    "markdown",
                    "vimdoc",
                    "query",
                    "python",
                    "javascript",
                    "typescript",
                    "html",
                    "css",
                    "go",
                },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    }

}
