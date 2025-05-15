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

vim.keymap.set('n', 'hi', ':nohlsearch<CR>')

-- Normal mode keys
vim.keymap.set('n', 'j', 'h')
vim.keymap.set('n', 'k', 'j')
vim.keymap.set('n', 'l', 'k')
vim.keymap.set('n', ';', 'l')
vim.keymap.set('n', 'ç', 'l')

-- Visual mode keys
vim.keymap.set('v', 'j', 'h')
vim.keymap.set('v', 'k', 'j')
vim.keymap.set('v', 'l', 'k')
vim.keymap.set('v', ';', 'l')
vim.keymap.set('v', 'ç', 'l')

-- Operator-pending mode keys 
vim.keymap.set('o', 'j', 'h')
vim.keymap.set('o', 'k', 'j')
vim.keymap.set('o', 'l', 'k')
vim.keymap.set('o', ';', 'l')

-- Move between panes
-- vim.keymap.set('n', 'J', '<c-w>h')
-- vim.keymap.set('n', 'K', '<c-w>j')
-- vim.keymap.set('n', 'L', '<c-w>k')
-- vim.keymap.set('n', 'Ç', '<c-w>l')

vim.keymap.set('n', '<c-w>j', '<c-w>h')
vim.keymap.set('n', '<c-w>k', '<c-w>j')
vim.keymap.set('n', '<c-w>l', '<c-w>k')
vim.keymap.set('n', '<c-w>;', '<c-w>l')

-- vim.keymap.set("n", "J", ":m '>+1<CR>gv=gv");
-- vim.keymap.set("n", "K", ":m '<-2<CR>gv=gv");

-- Custom Escape Keys
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('i', 'k;', '<Esc>la')
-- Primeagen J and K

-- enter netrw
vim.keymap.set('n', '<leader>e', ':Ex <CR>')

