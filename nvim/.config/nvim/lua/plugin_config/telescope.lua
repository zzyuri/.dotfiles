local builtin = require('telescope.builtin')
require('telescope').setup({

    --vim.keymap.set('n', '<c-f>', builtin.find_files, {}),
    vim.keymap.set('n', '<Space>fg', builtin.find_files, {}),
    vim.keymap.set('n', '<Space>ff', builtin.find_files, {}),
    vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {}),
    vim.keymap.set('n', '<Space>lg', builtin.live_grep, {}),
    vim.keymap.set('n', '<Space>ht', builtin.help_tags, {}),
})
