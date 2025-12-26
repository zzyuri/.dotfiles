return
{
    "nvim-telescope/telescope.nvim",

    opts = function()
        local builtin = require("telescope.builtin");
        require("telescope").setup({
            vim.keymap.set("n", "<leader>fg", builtin.find_files, {}),
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {}),
            -- vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {}),
            vim.keymap.set("n", "<leader>lg", builtin.live_grep, {}),
            vim.keymap.set("n", "<leader>ht", builtin.help_tags, {}),
            vim.keymap.set("n", "<leader>ps", function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end),

            defaults = {
                -- `hidden = true` is not supported in text grep commands.
                vimgrep_arguments = vimgrep_arguments,
            },
            pickers = {
                find_files = {
                    -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
                    find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "-L" },
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            }
        })
        require('telescope').load_extension('fzf')
    end
}
