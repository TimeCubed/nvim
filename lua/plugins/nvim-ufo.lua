require('ufo').setup({
	provider_selector = function(bufnr, filetype, buftype)
		return { 'lsp', 'indent' }
	end
})
