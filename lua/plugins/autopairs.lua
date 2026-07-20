-- nvim-autopairs config.
local registry = require('core.plugins.registry')

registry.register({
	spec = {'windwp/nvim-autopairs'},
	setup = function()
		require('nvim-autopairs').setup({
			event = InsertEnter,
		})
	end
})
