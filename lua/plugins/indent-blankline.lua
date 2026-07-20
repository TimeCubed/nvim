-- indent-blankline config.
local registry = require('core.plugins.registry')

registry.register({
	spec = {'lukas-reineke/indent-blankline.nvim'},
	setup = function()
		require('ibl').setup({
			indent = {
				char = "│",
			},
		})
	end
})
