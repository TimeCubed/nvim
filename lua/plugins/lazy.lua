-- This is the lazy.nvim setup. Keep in mind that I usually work with C, C++ and rust, meaning
-- you won't find any other language support. I also like my neovim config very minimal so I 
-- don't have plugins like nvim-tree or lualine or bufferline and I just use telescope for
-- navigating though files.

local lazy = {}

-- This is the part that actually installs lazy.nvim if it doesn't exist. 
-- I don't suggest editing this.

function lazy.install(path)
	if not vim.loop.fs_stat(path) then
		print("Installing lazy.nvim..")
		vim.fn.system({
			'git',
			'clone',
			'--filter=blob:none',
			'https://github.com/folke/lazy.nvim.git',
			'--branch=stable',
			path,
		})
	end
end

-- This is the part that sets up lazy.nvim on startup. Feel free to edit this
-- as you like.

function lazy.setup(plugins)
	lazy.install(lazy.path)

	vim.opt.rtp:prepend(lazy.path)
	require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

-- Here you can add any lazy.nvim options you want if you need them.

lazy.opts = {lazy = true}

-- Here you can add any plugins you need, I've neatly categorized mine into a few
-- categories here, you don't have to categorize yours if you want.

lazy.setup({
	-- Appearance
	--{'Mofiqul/vscode.nvim'}, -- I removed OneDark.nvim for this theme instead because I prefer vscode's themes.
	{'oxfist/night-owl.nvim'},
	{'nvim-treesitter/nvim-treesitter'},
	{'nvim-treesitter/nvim-treesitter-textobjects'},
	{'lukas-reineke/indent-blankline.nvim'},
	{'nvim-tree/nvim-web-devicons'},
	{'nvim-lualine/lualine.nvim'},

	-- Functionality
	{'andweeb/presence.nvim'},
	{'windwp/nvim-autopairs'},
	{'nvim-telescope/telescope.nvim'},
	{'nvim-lua/plenary.nvim'},
	{'CRAG666/code_runner.nvim'},
	--{'akinsho/bufferline.nvim'},
	{'hrsh7th/cmp-nvim-lsp-signature-help'},

	-- Auto Completion
	{'williamboman/mason.nvim'},
	{'neovim/nvim-lspconfig'},
	{
		'hrsh7th/nvim-cmp',
		lazy = false, -- I set Lazy to not lazy load nvim-cmp, as this apparently caused cmp to be slow.
	},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'saadparwaiz1/cmp_luasnip'},

	-- Snippets Support
	{'L3MON4D3/LuaSnip'},
	{'rafamadriz/friendly-snippets'},
})
