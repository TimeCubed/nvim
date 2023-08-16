require('nvim-tree').setup({
	hijack_cursor = true,
	--[[on_attach = function(bufnr)
		local bufmap = function(lhs, rhs, desc)
			vim.keymap.set('n', lhs, rhs, {buffer = bufnr, desc = desc})
		end

		local api = require('nvim-tree.api')

		bufmap('<enter>', api.node.open.edit, 'Expand folder or go to file')
		bufmap('<leader><enter>', api.node.navigate.parent_close, 'Close parent folder')
		bufmap('gh', api.tree.toggle_hidden_filter, 'Toggle hidden files')
	end ]]--
})
