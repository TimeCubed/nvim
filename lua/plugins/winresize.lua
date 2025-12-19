local resize = function(win, amt, dir)
	return function()
		require("winresize").resize(win, amt, dir)
	end
end

-- resize window in different directions
vim.keymap.set('n', '<C-Up>',    resize(0, 2, "up")   )
vim.keymap.set('n', '<C-Down>',  resize(0, 2, "down") )
vim.keymap.set('n', '<C-Left>',  resize(0, 2, "left") )
vim.keymap.set('n', '<C-Right>', resize(0, 2, "right"))

-- resize but for terminal mode as well
vim.keymap.set('t', '<C-Up>',    resize(0, 2, "up")   )
vim.keymap.set('t', '<C-Down>',  resize(0, 2, "down") )
vim.keymap.set('t', '<C-Left>',  resize(0, 2, "left") )
vim.keymap.set('t', '<C-Right>', resize(0, 2, "right"))
