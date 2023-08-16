-- This is a very simple nvim-treesitter config that also uses the extra textobjects
-- provided by the nvim-treesitter-textobjects plugin. Again this is straight from
-- their github page, except for some of the keymaps I think.

-- Another funny story is that I thought that nvim-treesitter and treesitter-objects
-- had to have separate config files, that's why I ended up naming this file to 
-- tsconfig.lua and I never bothered changin it since.

require('nvim-treesitter.install').compilers = {'gcc'}

require('nvim-treesitter.configs').setup({
	highlight = {
		enable = true,
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				['af'] = "@function.outer",
				['if'] = '@function.inner',
        		['ac'] = '@class.outer',
				['ic'] = '@class.inner',
			}
		}
	}
})
