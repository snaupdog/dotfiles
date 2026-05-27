return {
    -- {
    --     "m4xshen/hardtime.nvim",
    --     lazy = false,
    --     dependencies = { "MunifTanjim/nui.nvim" },
    --     opts = {},
    -- },

    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "InsertEnter",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    },
    {
        ft = "csv",
        "mechatroner/rainbow_csv",
    },

    {
        "hat0uma/csvview.nvim",
        ---@module "csvview"
        ---@type CsvView.Options
        opts = {
            parser = { comments = { "#", "//" } },
            keymaps = {
                -- Text objects for selecting fields
                textobject_field_inner = { "if", mode = { "o", "x" } },
                textobject_field_outer = { "af", mode = { "o", "x" } },
                -- Excel-like navigation:
                -- Use <Tab> and <S-Tab> to move horizontally between fields.
                -- Use <Enter> and <S-Enter> to move vertically between rows and place the cursor at the end of the field.
                -- Note: In terminals, you may need to enable CSI-u mode to use <S-Tab> and <S-Enter>.
                jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
                jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
                jump_next_row = { "<Enter>", mode = { "n", "v" } },
                jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },
            },
        },
        cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" },
    },

    { 'nyoom-engineering/oxocarbon.nvim' },

    {
        "norcalli/nvim-colorizer.lua",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("colorizer").setup({
                    "*", -- Enable for all filetypes
                    dart = { RGB = true, RRGGBB = true, names = false },
                },
                {
                    names    = false, -- disable named colors like "red"
                    RRGGBBAA = true,
                })
        end,
    },

    {
        "nyoom-engineering/oxocarbon.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.opt.background = "dark"
            vim.cmd([[colorscheme oxocarbon]])
        end,
    },
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         vim.opt.background = "dark"
    --         vim.cmd([[colorscheme tokyonight]])
    --     end,
    -- },

    {
        "folke/noice.nvim",
        event = { "BufReadPre", "BufNewFile" },
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
        },
    },

    {
        "stevearc/oil.nvim",
        cmd = {
            "Oil",
        },
        -- event = { "VeryLazy" },
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },

        vim.keymap.set("n", "<leader>n", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
    },

    {
        "nvim-lua/plenary.nvim", -- lua functions that many plugins use
        event = "InsertEnter",
    },

    {
        "MunifTanjim/nui.nvim",
        event = "InsertEnter",
    },
    {
        "altermo/ultimate-autopair.nvim",
        event = { "InsertEnter", "CmdlineEnter" },
        branch = "v0.6", --recommended as each new version will have breaking changes
        opts = {
            --Config goes here
        },
    },

    {
        "numToStr/Comment.nvim",
        opts = {
            -- add any options here
        },
        event = "InsertEnter",
    },

    {
        "eandrju/cellular-automaton.nvim",

        keys = {
            { "scr", "<cmd>CellularAutomaton scramble<CR>",     desc = " scramble" },
            { "rai", "<cmd>CellularAutomaton make_it_rain<CR>", desc = " scramble" },
        },
    },
}
