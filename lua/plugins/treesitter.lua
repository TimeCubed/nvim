-- nvim-treesitter config.
-- and no, past me, I *did* change it since. stop spreading lies!!!

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
