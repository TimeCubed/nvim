local registry = require('core.plugins.registry')

registry.register({
	spec = {'nvim-telescope/telescope.nvim'},
	setup = function()
		-- telescope keymaps.
		vim.keymap.set('n', '<leader>ff', require("telescope.builtin").find_files)
		vim.keymap.set('n', '<leader>fg', require("telescope.builtin").live_grep)
		vim.keymap.set('n', '<leader>fb', require("telescope.builtin").buffers)
		vim.keymap.set('n', '<leader>fh', require("telescope.builtin").help_tags)
	end
})
