return {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.10.0",
    -- version = false,
    lazy = false,
    build = ":TSUpdate", 
    config = function(_, opts)
        -- 1. Register the Blade parser config BEFORE running the plugin setup
        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        parser_config.blade = {
            install_info = {
                url = "https://github.com/EmranMR/tree-sitter-blade",
                files = { "src/parser.c" },
                branch = "main",
            },
            filetype = "blade",
        }

        -- 2. Run the actual treesitter setup with your existing opts
        require("nvim-treesitter.configs").setup(opts)
    end,
    opts = {
        -- A list of parser names, or "all"
        ensure_installed = { 
            "javascript",
            "typescript",
            "c",
            "lua",
            "json",
            "rust",
            "php",
            "php_only",
            "html",
            "css",
            "bash",
            "blade",
        },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = true,

        highlight = {
            -- `false` will disable the whole extension
            enable = true,

            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = false,
        }
    }

}
