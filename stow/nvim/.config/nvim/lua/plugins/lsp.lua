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
            local lspconfig = require("lspconfig")

            -- Lua LS config
            vim.lsp.config("lua_ls", {
                flags = { debounce_text_changes = 300 }
            })
            vim.lsp.enable({ "lua_ls" })

            -- JDTLS config (Java)
            vim.lsp.config("jdtls", {
                on_attach = function(client, bufnr)
                    client.server_capabilities.semanticTokensProvider = nil
                end
            })
            vim.lsp.enable({ "jdtls" })

        end,
    }
}
