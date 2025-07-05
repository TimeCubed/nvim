-- Indent-Blankline barely requires a config, similar to mason.nvim. By default it shows
-- a quite nice little line per tab.

--vim.opt.list = true
--vim.opt.listchars:append("eol:↴")

require('ibl').setup({
	indent = {
		char = "│",
	},
})
