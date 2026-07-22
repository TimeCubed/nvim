-- code_runner config.
-- runs a small shell script when :RunCode is executed, depending on the filetype.
local registry = require('core.plugins.registry')

registry.register({
	spec = {
		'CRAG666/code_runner.nvim',
		cmd = { 'RunCode', 'RunFile', 'RunProject', 'RunClose', 'CRFileType', 'CRProjects' },
		keys = { '<leader>ru' }
	},
	setup = function()
		require('code_runner').setup({
			filetype = {
				cpp = {
					"cd $dir; ",
					"gcc $fileName -o main -lstdc++ -lm && ",
					"echo \"Compilation complete!\" && ",
					"./main &&",
					"rm main"
				},

				c = {
					"cd $dir && ",
					"gcc $fileName -o /tmp/$fileNameWithoutExt && ",
					"echo \"Compilation complete!\" && ",
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
	end
})
