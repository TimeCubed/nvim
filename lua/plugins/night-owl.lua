local registry = require('core.plugins.registry')

registry.register({
	spec = {
		'oxfist/night-owl.nvim',
		lazy = false
	},
	setup = function()
		local nightowl = require('night-owl')

		local options = {
			bold = true,

			-- disable italics as they don't work well with pixelspace v4
			italics = false,
			underline = true,
			undercurl = false,
			transparent_background = false,
		}

		nightowl.setup(options)
	end
})
