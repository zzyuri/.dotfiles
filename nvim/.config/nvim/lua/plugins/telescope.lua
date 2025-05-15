return
{
    "nvim-telescope/telescope.nvim",

    opts = function()
        local builtin = require("telescope.builtin");
        require("telescope").setup({
            vim.keymap.set("n", "<Space>fg", builtin.find_files, {}),
            vim.keymap.set("n", "<Space>ff", builtin.find_files, {}),
            vim.keymap.set("n", "<Space><Space>", builtin.oldfiles, {}),
            vim.keymap.set("n", "<Space>lg", builtin.live_grep, {}),
            vim.keymap.set("n", "<Space>ht", builtin.help_tags, {}),
            vim.keymap.set("n", "<leader>ps", function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end),

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
