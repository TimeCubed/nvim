-- These are some basic Telescope keymaps. I mainly use the git_files one. This is straight
-- from the Telescope github repo, except that I did have a couple issues with the default
-- config not running the command I want, and it kept throwing errors so instead I use a simple
-- lua command to run the method I want.

vim.keymap.set('n', '<leader>ff', '<cmd>lua =require("telescope.builtin").find_files()<CR>')
vim.keymap.set('n', '<leader>fg', '<cmd>lua =require("telescope.builtin").live_grep()<CR>')
vim.keymap.set('n', '<leader>fb', '<cmd>lua =require("telescope.builtin").buffers()<CR>')
vim.keymap.set('n', '<leader>fh', '<cmd>lua =require("telescope.builtin").help_tags()<CR>')
