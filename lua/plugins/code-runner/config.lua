-- This is the config for code_runner.nvim. It's quite a simple and neat plugin
-- in my opinion. It just runs a simple script every time you run the :RunCode
-- command and you can define what each of them does per filetype. Although I
-- use makefiles, sometimes I do make single-file projects without a makefile,
-- so this is handy to test a simple test app or something. If I do have a makefile,
-- then I usually just use the :make command instead and that's quite easy to use.
-- After I run that I would usually just type in :!./file_name replacing file_name
-- with the name of the executable and it would just run it in the command area of
-- neovim. Either way, you can set this up to use many different types of files and,
-- if you need it to, set this up to use make or cmake for C or C++.

require('code_runner').setup({
	filetype = {
		cpp = {
			"cd $dir &&",
			"gcc $fileName -o main &&",
			"./main &&",
			"rm main"
		},

		c = {
			"cd $dir &&",
			"gcc $fileName -o main &&",
			"$dir/main &&",
			"rm $dir/main"
		},

		rust = {
			"cd $dir/../",
			"cargo run"
		}
	}
})

-- Here I just add a new keymap to run the RunCode commmand using <leader>ru.
vim.keymap.set('n', '<leader>ru', '<cmd>RunCode<cr>i')
