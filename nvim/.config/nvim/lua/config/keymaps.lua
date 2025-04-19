vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.wo.number = true 
vim.wo.relativenumber = true
vim.o.guicursor = 'n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor'


-- use spaces for tab and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Normal mode keys
vim.keymap.set('n', 'j', 'h')
vim.keymap.set('n', 'k', 'j')
vim.keymap.set('n', 'l', 'k')
vim.keymap.set('n', ';', 'l')

-- Visual mode keys
vim.keymap.set('v', 'j', 'h')
vim.keymap.set('v', 'k', 'j')
vim.keymap.set('v', 'l', 'k')
vim.keymap.set('v', ';', 'l')

-- Move between panes
-- vim.keymap.set('n', 'J', '<c-w>h')
-- vim.keymap.set('n', 'K', '<c-w>j')
-- vim.keymap.set('n', 'L', '<c-w>k')
-- vim.keymap.set('n', 'Ç', '<c-w>l')

vim.keymap.set('n', 'H', '<c-w>h')
vim.keymap.set('n', 'J', '<c-w>j')
vim.keymap.set('n', 'K', '<c-w>k')
vim.keymap.set('n', 'L', '<c-w>l')

-- Custom Escape Keys
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('i', 'k;', '<Esc>$')

-- enter netrw
vim.keymap.set('n', '<leader>e', ':e .<CR>')

-- crazy remap just for fit in my jkl; binding

vim.keymap.set('n', 'd1k', 'd1j')
vim.keymap.set('n', 'd1l', 'd1k')

vim.keymap.set('n', 'd2k', 'd2j')
vim.keymap.set('n', 'd2l', 'd2k')

vim.keymap.set('n', 'd3k', 'd3j')
vim.keymap.set('n', 'd3l', 'd3k')

vim.keymap.set('n', 'd4k', 'd4j')
vim.keymap.set('n', 'd4l', 'd4k')

vim.keymap.set('n', 'd5k', 'd5j')
vim.keymap.set('n', 'd5l', 'd5k')

vim.keymap.set('n', 'd6k', 'd6j')
vim.keymap.set('n', 'd6l', 'd6k')

vim.keymap.set('n', 'd7k', 'd7j')
vim.keymap.set('n', 'd7l', 'd7k')

vim.keymap.set('n', 'd8k', 'd8j')
vim.keymap.set('n', 'd8l', 'd8k')

vim.keymap.set('n', 'd9k', 'd9j')
vim.keymap.set('n', 'd9l', 'd9k')
