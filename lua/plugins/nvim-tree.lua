-- After I removed nvim-tree, this config is no longer used, and will
-- most likely be removed. I might keep it here a little longer in case
-- someone needs it but it's going to get removed for sure.

require('nvim-tree').setup({
	hijack_cursor = true,
	-- So here I actually copied this config from a website about
	-- setting up neovim. In fact, most of my config is based upon
	-- that website's config for many of the plugins I use. I found
	-- that this custom config with custom keymaps is often quite
	-- annoying to use and the default is better. It also for whatever
	-- reason slows down the startup time of neovim by quite a bit, so
	-- I disabled it here. Still though, I'll keep this in case someone
	-- wants to create or remap the default nvim-tree keymaps and
	-- doesn't know how.

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
