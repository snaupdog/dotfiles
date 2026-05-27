return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local mason = require("mason")
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
                "cssls",
                "html",
                "emmet_language_server",
                "eslint",
                "tailwindcss",
                "ts_ls",

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
            -- vim.keymap.set("n", "gr", vim.require("telescope.builtin").lsp_references, {})
        end

        ---@diagnostic disable-next-line: undefined-global
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

        -- WEB DEV LSPs
        -- Modern LSP configuration using vim.lsp.config (Neovim 0.10+)

        -- WEB DEV LSPs
        vim.lsp.config.lua_ls = {
            cmd = { "lua-language-server" },
            filetypes = { "lua" },
            on_attach = on_attach,
            capabilities = capabilities,
        }

        vim.lsp.config.kotlin_lsp = {
            cmd = { "kotlin-lsp" },
            filetypes = { "kotlin" },
            on_attach = on_attach,
            capabilities = capabilities,
        }
        vim.lsp.config.cssls = {
            cmd = { "vscode-css-language-server", "--stdio" },
            filetypes = { "css", "scss", "less" },
            on_attach = on_attach,
            capabilities = capabilities,
        }

        vim.lsp.config.marksman = {
            cmd = { "marksman", "server" },
            filetypes = { "markdown", "markdown.mdx" },
            on_attach = on_attach,
            capabilities = capabilities,
        }

        vim.lsp.config.ts_ls = {
            cmd = { "typescript-language-server", "--stdio" },
            filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
            on_attach = on_attach,
            capabilities = capabilities,
        }

        vim.lsp.config.html = {
            cmd = { "vscode-html-language-server", "--stdio" },
            filetypes = { "html" },
            on_attach = on_attach,
            capabilities = capabilities,
        }

        vim.lsp.config.emmet_language_server = {
            cmd = { "emmet-language-server", "--stdio" },
            filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
            on_attach = on_attach,
            capabilities = capabilities,
        }

        vim.lsp.config.eslint = {
            cmd = { "vscode-eslint-language-server", "--stdio" },
            filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue", "svelte", "astro" },
            on_attach = on_attach,
            capabilities = capabilities,
        }

        vim.lsp.config.tailwindcss = {
            cmd = { "tailwindcss-language-server", "--stdio" },
            filetypes = { "aspnetcorerazor", "astro", "astro-markdown", "blade", "clojure", "django-html", "htmldjango", "edge", "eelixir", "elixir", "ejs", "erb", "eruby", "gohtml", "gohtmltmpl", "haml", "handlebars", "hbs", "html", "html-eex", "heex", "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks", "php", "razor", "slim", "twig", "css", "less", "postcss", "sass", "scss", "stylus", "sugarss", "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact", "vue", "svelte" },
            on_attach = on_attach,
            capabilities = capabilities,
        }

        vim.lsp.config.pylsp = {
            cmd = { "pylsp" },
            filetypes = { "python" },
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                pylsp = {
                    plugins = {
                        pycodestyle = {
                            ignore = { "W391", "E303", "W293", "W503", "E302", "W291" },
                            maxLineLength = 150,
                        },
                    },
                },
            },
        }


        -- Java
        vim.lsp.config.jdtls = {
            cmd = { "jdtls" },
            filetypes = { "java" },
            on_attach = on_attach,
            capabilities = capabilities,
        }

        vim.lsp.config.gopls = {
            cmd = { "gopls" },
            filetypes = { "go", "gomod", "gowork", "gotmpl" },
            on_attach = on_attach,
            capabilities = capabilities,
        }

        vim.lsp.config.clangd = {
            cmd = { "clangd" },
            filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end,
}
-- this is an example
