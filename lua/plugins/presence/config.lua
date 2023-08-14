-- This plugin is for displaying neovim on discord using rich presence.
-- Sadly it doesn't work on the browser version of discord which I use,
-- so I'm most likely going to remove this config file in the future.

require('presence').setup({
	auto_update        = true,
	neovim_image_text  = 'The best editor',
	main_image         = 'neovim',
	enable_line_number = true,

	editing_text       = 'Editing %s..',
	file_explorer_text = 'Browsing %s..',
	git_commit_text    = 'Commiting stuff',
	reading_text       = 'Reading %s..',
	workspace_text     = 'Working on %s..',
	line_number_text   = 'On line %s out of %s',
})

