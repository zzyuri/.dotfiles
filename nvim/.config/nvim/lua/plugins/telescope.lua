return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim', 
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make'}
    },
    config = function ()
        local builtin = require('telescope.builtin')
        local utils = require("telescope.utils")

        require('telescope').setup({

            vim.keymap.set('n', '<Space>fg', builtin.find_files, {}),
            vim.keymap.set('n', '<Space>ff', builtin.find_files, {}),
            vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {}),
            vim.keymap.set('n', '<Space>lg', builtin.live_grep, {}),
            vim.keymap.set('n', '<Space>ht', builtin.help_tags, {}),
    }) 
    end
}


