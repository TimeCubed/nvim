-- mason.nvim config.
-- mason doesn't require a large setup file. I might remove this, but I won't.
local registry = require('core.plugins.registry')

registry.register({
	spec = {'williamboman/mason.nvim'},
	setup = function()
		require('mason').setup()
	end
})
