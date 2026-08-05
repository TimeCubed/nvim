local registry = require('core.plugins.registry')

registry.register({
	spec = {'numToStr/Comment.nvim'},
	setup = function()
		require('Comment').setup({
			toggler = {
				line = '<leader>lc',
				block = '<leader>bc'
			},
			opleader = {
				line = 'mc',
				block = 'nc'
			}
		})
	end
})
