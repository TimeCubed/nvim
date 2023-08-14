-- Much like some of the other plugins here, nvim-autopairs doesn't need that big
-- of a config file to set it up. This plugin is for automatically doing stuff like
-- inserting an extra parentheses when you type a left parenthesis. Test it out here! -> 

require('nvim-autopairs').setup({
	event = InsertEnter,
})
