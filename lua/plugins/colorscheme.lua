-- I installed the vscode.nvim theme because I always sort of liked the theme
-- vscode used. Now I can experience it inside of neovim. Funnily enough, the
-- vscode theme was one of the things making me think of moving off neovim.
--require('vscode').setup()

--vim.cmd('colorscheme vscode')
--vim.cmd('colorscheme habamax')
vim.cmd('colorscheme night-owl')

-- I still keep these though so that if anyone wants to change the StatusLine
-- then they would know how to. I'm honestly unsure if this would affect anything
-- using LuaLine
vim.cmd('hi StatusLine guibg=#30363F guifg=#A0A8B5')
vim.cmd('hi StatusLineNC guibg=#909090 guifg=#101010')
