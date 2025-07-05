-- code_runner config.
-- runs a small shell script when :RunCode is executed, depending on the filetype.

require('code_runner').setup({
	filetype = {
		cpp = {
			"cd \"$dir\"; ",
			"gcc $fileName -o main -lstdc++ -lm && ",
			"echo \"Compilation complete!\" && ",
			"./main &&",
			"rm main"
		},

		c = {
			"cd \"$dir\" && ",
			"gcc $fileName -o /tmp/$fileNameWithoutExt && ",
			"/tmp/$fileNameWithoutExt && ",
			"rm /tmp/$fileNameWithoutExt",
		},

		rust = {
			"cd $dir/../ && ",
			"cargo run"
		},

		python = {
			"cd $dir && ",
			"python3 $fileName"
		}
	}
})

-- quick :RunCode keymap.
vim.keymap.set('n', '<leader>ru', '<cmd>RunCode<cr>i')
