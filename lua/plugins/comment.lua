local registry = require('core.plugins.registry')

registry.register({
	spec = {'numToStr/Comment.nvim'},
	setup = function()
		require('Comment').setup()
	end
})
