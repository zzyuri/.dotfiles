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


    {
        "neovim/nvim-lspconfig",
        lazy = false,

        init = function()
            vim.g.coq_settings = {
                auto_start = true,
            }
        end,

        config  = function()

            -- z+o to open z+c to close the folding
            require('lspconfig').lua_ls.setup {
                on_init = function(client)
                    local path = client.workspace_folders[1].name
                    if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
                        return
                    end

                    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                        runtime = {
                            -- Tell the language server which version of Lua you're using
                            -- (most likely LuaJIT in the case of Neovim)
                            version = 'LuaJIT'
                        },
                        -- Make the server aware of Neovim runtime files
                        workspace = {
                            checkThirdParty = false,
                            library = {
                                vim.env.VIMRUNTIME,
                                vim.fn.expand "$VIMRUNTIME/lua",
                                vim.fn.expand "$VIMRUNTIME/lua/vim/lsp",
                                vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
                                -- Depending on the usage, you might want to add additional paths here.
                                "${3rd}/luv/library",
                                -- "${3rd}/busted/library",
                            }
                            -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                            -- library = vim.api.nvim_get_runtime_file("", true)
                        }
                    })
                end,
                settings = {
                    Lua = {}
                }
            }

        end,
    }
}
