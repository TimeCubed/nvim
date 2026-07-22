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

		-- code folding keymaps.
		vim.keymap.set('n', ';', 'za')

		vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
		vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

		vim.keymap.set('n', '<leader>fk', function()
			local winid = require('ufo').peekFoldedLinesUnderCursor()
			if not winid then
				vim.lsp.buf.hover()
			end
		end)
	end
})
