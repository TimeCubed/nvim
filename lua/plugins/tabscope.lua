-- tabscope setup
local registry = require('core.plugins.registry')

registry.register({
	spec = {'backdround/tabscope.nvim'},
	setup = function()
		require('tabscope').setup({

		})
	end
})
