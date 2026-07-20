local registry = require('core.plugins.registry')

registry.register({
	spec = {
		'kevinhwang91/nvim-ufo',
		dependencies = 'kevinhwang91/promise-async'
	},
	setup = function()
		require('ufo').setup({
			provider_selector = function(bufnr, filetype, buftype)
				return { 'lsp', 'indent' }
			end
		})
	end
})
