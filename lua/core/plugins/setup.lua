-- Lazy.nvim config. Do not remove.
require('plugins.lazy')

-- Here is where all of the plugin setups are included. You can add your own files if you
-- want. All of the plugin setups here are just the ones from the plugin's respective
-- github repo. They're pretty much the default config, along with a couple keymaps
-- for ease of use for some of them.

require('plugins.presence')
require('plugins.autopairs')
require('plugins.mason') -- Mason installs the language servers so I don't have to manually. This won't set them up however.
require('plugins.nvim-lspconfig')

-- This next file here is the autocompletion setup. It's mostly the nvim-cmp setup but it
-- also sets up luasnip and a couple other plugins for use along with nvim-cmp.

require('plugins.autocomplete')

require('plugins.treesitter')
require('plugins.nvim-devicons')
require('plugins.telescope')

-- I changed the 'github-nvim-theme' folder to 'colorscheme' instead
-- so it's more clear what it's for, as well as to be more general with it.
require('plugins.colorscheme')
require('plugins.code-runner')
