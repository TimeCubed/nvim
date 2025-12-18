-- lazy.nvim config.

local lazy = {}

-- install lazy.nvim, if it doesn't already exist.
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

-- lazy startup setup.
function lazy.setup(plugins)
	lazy.install(lazy.path)

	vim.opt.rtp:prepend(lazy.path)
	require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

lazy.opts = {
	lazy = true,
}

-- plugin list
lazy.setup({
	-- Appearance
	{'oxfist/night-owl.nvim'},
	{'bartekjaszczak/gruv-vsassist.nvim'},
	{'nvim-treesitter/nvim-treesitter'},
	--{'nvim-treesitter/nvim-treesitter-textobjects'},
	{'lukas-reineke/indent-blankline.nvim'},
	{'nvim-tree/nvim-web-devicons'},
	{'nvim-lualine/lualine.nvim'},
	{'backdround/tabscope.nvim'},

	-- Functionality
	--{'andweeb/presence.nvim'},
	{'windwp/nvim-autopairs'},
	{'nvim-telescope/telescope.nvim'},
	{'nvim-lua/plenary.nvim'},
	{'CRAG666/code_runner.nvim'},
	{'hrsh7th/cmp-nvim-lsp-signature-help'},
	--{'akinsho/bufferline.nvim'},

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
	--{'rafamadriz/friendly-snippets'},
})
