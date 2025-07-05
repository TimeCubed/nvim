-- leader key.
vim.g.mapleader = ' '

-- this opens a terminal, running the shell specified in core/config/options.lua.
-- an alternative is to use plugins like akinsho/toggleterm.nvim, but this is simpler.
vim.keymap.set('n', '<leader>tr', '<cmd>sp<CR><cmd>term<CR>i', {desc = 'Open terminal'})
vim.keymap.set('t', 'jk', '<C-\\><C-n>')

-- quick keybind to quit neovim only if all changes have been written.
vim.keymap.set('n', '<leader>qt', '<cmd>qa<CR>')

-- quickly quit out of a single buffer only if changes have been written.
vim.keymap.set('n', '<leader>x', '<cmd>q<CR>')

-- quick save keybind.
vim.keymap.set('n', '<leader>w', '<cmd>w<CR>')

-- splits vertically.
vim.keymap.set('n', '<leader>v', '<C-w>v<C-w>l')

-- splits horizontally.
vim.keymap.set('n', '<leader>hr', '<cmd>sp<CR>')

-- unhighlight searches
vim.keymap.set('n', '<leader>hl', '<cmd>nohlsearch<CR>')

-- disable all arrow key functionality in normal, visual and insert modes.
vim.keymap.set({'n', 'v', 'i'}, '<Up>', '<NOP>')
vim.keymap.set({'n', 'v', 'i'}, '<Down>', '<NOP>')
vim.keymap.set({'n', 'v', 'i'}, '<Left>', '<NOP>')
vim.keymap.set({'n', 'v', 'i'}, '<Right>', '<NOP>')

-- go to the start of the line in normal and visual mode.
-- go to the end of the line in normal and visual mode.
vim.keymap.set({'n', 'v'}, 'H', '^')
vim.keymap.set({'n', 'v'}, 'L', '$')

-- go to normal mode using jk.
vim.keymap.set('i', 'jk', '<Esc>')

-- disable the escape key in insert and visual mode.
vim.keymap.set({'v', 'i'}, '<Esc>', '<NOP>')

-- quick keybind to bring up the netrw explorer.
vim.keymap.set('n', '<leader>e', '<cmd>Ex<CR>')

-- move a full line up or down in normal mode.
vim.keymap.set('n', '<S-k>', '<cmd>m .-2<CR>==')
vim.keymap.set('n', '<S-j>', '<cmd>m .+1<CR>==')

-- same as above keybinds, but for insert mode. unused.
--vim.keymap.set('i', '<S-j>', '<Esc><cmd>m .+1<CR>==gi')
--vim.keymap.set('i', '<S-k>', '<Esc><cmd>m .-2<CR>==gi')

-- window movement binds
vim.keymap.set('n', '<C-h>', '<C-w>h');
vim.keymap.set('n', '<C-j>', '<C-w>j');
vim.keymap.set('n', '<C-k>', '<C-w>k');
vim.keymap.set('n', '<C-l>', '<C-w>l');

-- move to next/previous buffer. was used with bufferline, but bufferline was removed from the config,
-- so these are unused.
--vim.keymap.set('n', 'n', '<CMD>:bn<CR>')
--vim.keymap.set('n', 'b', '<CMD>:bp<CR>')

-- also used with bufferline. also unused.
--vim.keymap.set('n', '<leader>c', '<CMD>:bd<CR>')
