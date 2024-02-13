return {

    {
        "nvim-lua/plenary.nvim", -- lua functions that many plugins use
        event = 'InsertEnter'
    },

    {
        'rcarriga/nvim-notify',
        event = 'InsertEnter'
    },

    {
        'MunifTanjim/nui.nvim',
        event = 'InsertEnter'
    },

    {
        'windwp/nvim-autopairs',
        event = { "BufReadPre", "BufNewFile" },
        opts = {} -- this is equalent to setup({}) function
    },

    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        event = "InsertEnter",
    },
    {
        "eandrju/cellular-automaton.nvim",

        event = { "InsertEnter" },
    },

    {
        "echasnovski/mini.nvim"

    },

}
