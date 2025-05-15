return {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    { 'windwp/nvim-autopairs', event = "InsertEnter", config = true },


    { "mason-org/mason.nvim", opts = {} },

    { "mason-org/mason-lspconfig.nvim", opts = {}, enabled = true },

    {
        "neovim/nvim-lspconfig",
        lazy = false,
        dependencies = {
            "folke/lazydev.nvim",

            -- AUTOCOMPLETE
            { "ms-jpq/coq_nvim", branch = "coq" },

            -- 9000+ Snippets
            { "ms-jpq/coq.artifacts", branch = "artifacts" },

            { 'ms-jpq/coq.thirdparty', branch = "3p" },

            -- AUTOCOMPLETE
            -- "hrsh7th/cmp-nvim-lsp",
            -- "hrsh7th/cmp-buffer",
            -- "hrsh7th/cmp-path",
            -- "hrsh7th/cmp-cmdline",
            -- "hrsh7th/nvim-cmp",

            -- SNIPPETS
            -- "L3MON4D3/LuaSnip",
            -- "saadparwaiz1/cmp_luasnip",
            -- "rafamadriz/friendly-snippets",

            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                }
            }
        },
        enabled = true
    },

    { "ThePrimeagen/harpoon", branch = "harpoon2", opts = {} },

    { "rose-pine/neovim", name = "rose-pine", enabled = false },

    {
        "sphamba/smear-cursor.nvim",
        opts = {},
        enabled = false
    },

    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release" }
        },
    },

    {
        "ThePrimeagen/vim-apm",
        config = function()
            local apm = require("vim-apm")

            apm:setup({})
            vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
        end,
    },

    "xiyaowong/transparent.nvim",
    "nvim-treesitter/nvim-treesitter",
    "folke/trouble.nvim",
    "ThePrimeagen/vim-be-good",
    "rebelot/kanagawa.nvim",
}

