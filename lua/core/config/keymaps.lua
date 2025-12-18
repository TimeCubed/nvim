-- leader key.
vim.g.mapleader = ' '

-------- TERMINAL KEYBINDS --------

-- this opens a terminal, running the shell specified in core/config/options.lua.
-- an alternative is to use plugins like akinsho/toggleterm.nvim, but this is simpler.
vim.keymap.set('n', '<leader>tr', '<cmd>sp<CR><cmd>term<CR>')

-- vertical terminal
vim.keymap.set('n', '<leader>tv', '<cmd>vert:sp<CR><cmd>term<CR>')

--------  FILE OPERATIONS  --------

-- quick save keybind.
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>')

-------- BUFFER MANAGEMENT --------

-- quickly quit out of a single buffer only if changes have been written
vim.keymap.set('n', '<leader>x', '<cmd>q<cr>')

-- quick keybind to quit neovim only if all changes have been written
vim.keymap.set('n', '<leader>qt', '<cmd>qa<cr>')

-- force quit neovim, regardless of if changes were written or not
vim.keymap.set('n', '<leader>qa', '<cmd>!qa<cr>')

-- move to next/previous buffer. was used with bufferline, but bufferline was
-- removed from the config, so these are unused.
--vim.keymap.set('n', 'n', '<CMD>:bn<CR>')
--vim.keymap.set('n', 'b', '<CMD>:bp<CR>')

-- also used with bufferline. also unused.
--vim.keymap.set('n', '<leader>c', '<CMD>:bd<CR>')

-- quick keybind to bring up the netrw explorer
vim.keymap.set('n', '<leader>e', '<cmd>Ex<cr>')

-- unhighlight searches
vim.keymap.set('n', '<leader>hl', '<cmd>nohlsearch<cr>')

--------   TAB MANAGEMENT  --------

-- keybind for :tabnew, :tabnext and :tabprev
vim.keymap.set('n', '<leader>tc', '<cmd>tabnew<cr>'  )
vim.keymap.set('n', '<leader>tn', '<cmd>tabnext<cr>' )
vim.keymap.set('n', '<leader>tp', '<cmd>tabprev<cr>' )
vim.keymap.set('n', '<leader>tx', '<cmd>tabclose<cr>')

--------   MODAL KEYBINDS  --------

-- go to normal mode using jk in terminal mode
vim.keymap.set('t', 'jk', '<C-\\><C-n>')

-- go to normal mode using jk.
vim.keymap.set('i', 'jk', '<Esc>')

-------- TEXT MANIUPLATION --------

-- quick delete everything to the right of and beneath the cursor
vim.keymap.set('n', '<S-d>', 'd$')

-- quick indent/unindent keybinds
-- I *could* just use > or < for it, but I like my tabs
-- also, note for future me: you can use = to autoindent.
-- I know you're going to forget that, so there you go, you're welcome.
vim.keymap.set('v', '<Tab>',   '>')
vim.keymap.set('v', '<S-Tab>', '<')

-- move a full line up or down in normal mode.
vim.keymap.set('n', '<S-k>', '<cmd>m .-2<CR>==')
vim.keymap.set('n', '<S-j>', '<cmd>m .+1<CR>==')

-- same as above keybinds, but for insert mode. unused.
--vim.keymap.set('i', '<S-j>', '<Esc><cmd>m .+1<CR>==gi')
--vim.keymap.set('i', '<S-k>', '<Esc><cmd>m .-2<CR>==gi')

-------- WINDOW MANAGEMENT --------

-- splits vertically.
vim.keymap.set('n', '<leader>v', '<C-w>v<C-w>l')

-- splits horizontally.
vim.keymap.set('n', '<leader>hr', '<cmd>sp<CR>')

--------     NAVIGATION    --------

-- go to the start of the line in normal and visual mode.
vim.keymap.set({'n', 'v'}, 'H', '^')
-- go to the end of the line in normal and visual mode.
vim.keymap.set({'n', 'v'}, 'L', '$')

-- window movement binds
vim.keymap.set('n', '<C-h>', '<C-w>h');
vim.keymap.set('n', '<C-j>', '<C-w>j');
vim.keymap.set('n', '<C-k>', '<C-w>k');
vim.keymap.set('n', '<C-l>', '<C-w>l');

-------- DISABLED KEYBINDS --------

-- disable the escape key in insert and visual mode.
vim.keymap.set('i', '<Esc>', '<NOP>')

-- disable all arrow key functionality in normal, visual and insert modes.
vim.keymap.set({'n', 'v', 'i'}, '<Up>',    '<NOP>')
vim.keymap.set({'n', 'v', 'i'}, '<Down>',  '<NOP>')
vim.keymap.set({'n', 'v', 'i'}, '<Left>',  '<NOP>')
vim.keymap.set({'n', 'v', 'i'}, '<Right>', '<NOP>')
