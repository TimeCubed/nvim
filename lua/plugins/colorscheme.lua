-- night-owl setup.

local nightowl = require("night-owl")

nightowl.setup({
	bold = false,

	-- disable italics as they don't work well with pixelspace v4
	italics = false,
	underline = true,
	undercurl = false,
	transparent_background = true,
})

require("gruv-vsassist").setup({
	transparent = false,
	italic_comments = false,
	disable_nvimtree_bg = true,

	color_overrides = {
		vscBack = "#1a1a1a",
	}
})

--vim.cmd('colorscheme night-owl')
vim.cmd('colorscheme gruv-vsassist')

-- these options here are for when I used to use habamax as my default
-- colorscheme, but using a custom theme + lualine means these aren't needed
-- anymore. they also don't do anything.
--vim.cmd('hi StatusLine guibg=#30363F guifg=#A0A8B5')
--vim.cmd('hi StatusLineNC guibg=#909090 guifg=#101010')
