-- telescope.nvim config.
-- I have no idea what happened to telescope.nvim, it's just gone from my config and
-- apparently I forgot it existed. idk why this is here still, it just is.

vim.keymap.set('n', '<leader>ff', '<cmd>lua =require("telescope.builtin").find_files()<CR>')
vim.keymap.set('n', '<leader>fg', '<cmd>lua =require("telescope.builtin").live_grep()<CR>')
vim.keymap.set('n', '<leader>fb', '<cmd>lua =require("telescope.builtin").buffers()<CR>')
vim.keymap.set('n', '<leader>fh', '<cmd>lua =require("telescope.builtin").help_tags()<CR>')
