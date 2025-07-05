-- presence.nvim config.
-- this was also never removed, because it's really hard to type
-- `rm lua/plugins/presence.nvim`. don't judge me :(

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

