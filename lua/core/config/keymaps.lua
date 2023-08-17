vim.g.mapleader = ' ' -- I use the space key as the leader key. Many other people use this too.

-- I use this next keymap for opening up a simple terminal. I don't like using plugins because
-- they can be a bit unreliable at times.
vim.keymap.set('n', '<leader>tr', '<cmd>sp<CR><cmd>term<CR>i', {desc = 'Open terminal'})

-- This keybind is to quickly close neovim without having to spam :q's everywhere
vim.keymap.set('n', '<leader>qt', '<cmd>qa!<CR>')

-- Quick keybind for saving instead of writing :w
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>')

-- Splits vertically and moves to the newly split tab on the right
vim.keymap.set('n', '<leader>v', '<C-w>v<C-w>l')

-- Another way to quickly quit a buffer if I need to
vim.keymap.set('n', '<leader>x', '<cmd>q<CR>')

-- Here I use this keymap to unhighlight a search as I don't use a plugin for refactoring.
-- I might start using refactor.nvim for this, but this is still handy nontheless.
vim.keymap.set('n', '<leader>h', '<cmd>nohlsearch<CR>')

-- I unmapped the arrow keys here to get into the habit of using the hjkl keys.
-- It's good to use as a beginner but you may want to disable this (or remap this to something else).
-- A good remap for these is probably setting them to switch between windows quickly instead of 
-- Ctrl+W + h j k or l.
-- It's also good to note that this disables them for insert mode too so you may also want to 
-- disable this for insert mode if you want, but it's better to use normal mode for navigating a file.
vim.keymap.set({'n', 'v', 'i'}, '<Up>', '<NOP>')
vim.keymap.set({'n', 'v', 'i'}, '<Down>', '<NOP>')
vim.keymap.set({'n', 'v', 'i'}, '<Left>', '<NOP>')
vim.keymap.set({'n', 'v', 'i'}, '<Right>', '<NOP>')

-- Quick keymaps for going to the start/end of a line
vim.keymap.set({'n', 'v'}, 'H', '^')
vim.keymap.set({'n', 'v'}, 'L', '$')

-- Most people use kj to exit out of insert mode, but I like to use jk instead.
-- You're unlikely to type kj or jk in any situation though so it won't matter
-- which one you use.
vim.keymap.set('i', 'jk', '<Esc>')

-- I also unmap the escape key so I get into the habit of using my keymap
vim.keymap.set('i', '<Esc>', '<NOP>')

-- This keymap is to quickly open up the netrw explorer so I don't have to use the hard-to-type
-- :Ex command. You may want to remap this to whatever you'd like.
vim.keymap.set('n', '<leader>e', '<cmd>Ex<CR>')
