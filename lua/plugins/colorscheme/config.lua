-- This used to be set to 'github_dark_colorblind' but I removed it in favor of
-- another built-in theme called habamax. I preferred the colors over the other
-- one. To be clear: I'm not colorblind, I just preferred the colorblind one
-- over the dark_high_contrast colors.
vim.cmd('colorscheme habamax')

-- Because I don't use lualine, the colorscheme here changes the default statusline color 
-- to an ugly blue color. I didn't quite like that so these next lines just set them to
-- black text on white background. The second one is probably useless as you won't ever see
-- the statusline inactive because I set the statusline to have 1 global line for all buffers,
-- but it's good if someone else wants to change this. These just use a hex color code, so it's 
-- easy to set to whatever color you may like
vim.cmd('hi StatusLine guibg=#efefef guifg=#101010')
vim.cmd('hi StatusLineNC guibg=#909090 guifg=#101010')
