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
