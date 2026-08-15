return {
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    },

    { "mason-org/mason-lspconfig.nvim", opts = {}, enabled = true },

    {
        "neovim/nvim-lspconfig",
        lazy = false,

        dependencies = {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                }
            }
        },

        init = function()
            vim.g.coq_settings = {
                auto_start = true,
            }
        end,

        config  = function()

            vim.lsp.config("lua_ls", {
                flags = { debounce_text_changes = 300 }
            })
            vim.lsp.enable({ "lua_ls" })

        end,
    }
}
