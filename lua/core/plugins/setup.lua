-- Lazy.nvim config. Do not remove.
require('plugins.lazy.lazy-config')

-- Here is where all of the plugin setups are included. You can add your own files if you
-- want. All of the plugin setups here are just the ones from the plugin's respective
-- github repo. They're pretty much the default config, along with a couple keymaps
-- for ease of use for some of them.

require('plugins.presence.config')
require('plugins.autopairs.config')
require('plugins.mason.config') -- Mason installs the language servers so I don't have to manually. This won't set them up however.
require('plugins.nvim-lspconfig.config')

-- This next file here is the autocompletion setup. It's mostly the nvim-cmp setup but it
-- also sets up luasnip and a couple other plugins for use along with nvim-cmp.

require('plugins.autocomplete-setup.config')

require('plugins.treesitter.tsconfig')
require('plugins.nvim-devicons.config')
require('plugins.telescope.config')
require('plugins.github-nvim-theme.config')
require('plugins.code-runner.config')
