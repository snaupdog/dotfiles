return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "black" },

                javascript = { "prettierd", "prettier" },
                typescript = { "prettierd", "prettier" },
                javascriptreact = { "prettierd", "prettier" },
                typescriptreact = { "prettierd", "prettier" },
                json = { "prettierd", "prettier" },
                css = { "prettierd", "prettier" },
                scss = { "prettierd", "prettier" },
                html = { "prettierd", "prettier" },

                bash = { "beautysh" },
                dart = { "dartfmt" },
                java = { "clang-format" },
            },

            -- Stop after first available formatter succeeds
            stop_after_first = true,
        })

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            callback = function(args)
                conform.format({
                    bufnr = args.buf,
                    timeout_ms = 750,
                    lsp_fallback = true,
                })
            end,
        })
    end,
}
