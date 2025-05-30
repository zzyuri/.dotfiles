vim.g.maplocalleader = ' '
vim.g.mapleader = ' '

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

-- vim.keymap.set('n', 'hi', ':nohlsearch<CR>')
vim.keymap.set('n', 'h', ':noh<CR>')

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

-- ThePrimeagen J and K
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv");
vim.keymap.set("v", "L", ":m '<-2<CR>gv=gv");

-- Custom Escape Keys
-- vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('i', 'jk', '<Esc>')
-- vim.keymap.set('i', 'k;', '<Esc>la')

-- enter netrw
vim.keymap.set('n', '<leader>e', ':Ex <CR>')

vim.keymap.set("n", "J", "mzJ`z")

-- Up and Down with the screen centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Ultimate vim ricing. This makes me walk around my f with , for back and . for forward 
vim.keymap.set("n", ".", ";")

-- Next highlighted item and center the screen
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "n", "nzzzv")vim.keymap.set("n", "n", "nzzzv")vim.keymap.set("n", "n", "nzzzv")

-- vim.keymap.set("n", "op", "o<Esc>l")
-- vim.keymap.set("n", "oi", "O<Esc>j")
-- vim.keymap.set("n", "oo", "A<CR>")

-- :so file bind
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
