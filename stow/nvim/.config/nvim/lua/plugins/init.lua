return {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    { "rose-pine/neovim", name = "rose-pine", enabled = true },

    "xiyaowong/transparent.nvim",


    {
        "sphamba/smear-cursor.nvim",
        opts = {
            legacy_computing_symbols_support = false,
            distance_stop_animating_vertical_bar = 0.1,

            stiffness = 0.8,
            trailing_stiffness = 0.5,
            distance_stop_animating = 0.5,
        },
        enabled = false,
    },

    {
        'fei6409/log-highlight.nvim',
        opts = {},
    },

    {
        'stevearc/conform.nvim',
        opts = {},
    },

    { 'windwp/nvim-autopairs', event = "InsertEnter", config = true },

    {
        "jiaoshijie/undotree",
        opts = {
            -- your options
        },
        keys = { -- load the plugin only when using it's keybinding:
            { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
        },
    } 

    -- will be useful later
    -- "folke/trouble.nvim",

}
