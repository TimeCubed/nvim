-- start lazy.nvim
require('plugins.lazy')

-- actual plugin config.
-- the order of these is completely haphazard "when I added it"-style
-- I genuinely don't know if there's a proper order to this or not.
--
-- nvm scratch that, I just sorted everything. it's still haphazard, but no
-- longer a "when I added" flavor of haphazard. not sure what flavor it is,
-- but it is haphazard.

-- appearance
require('plugins.colorscheme') -- include this first!
require('plugins.treesitter')
require('plugins.lualine')
require('plugins.indent-blankline')
require('plugins.tabscope')

-- functionality
require('plugins.mason')
require('plugins.nvim-lspconfig')
require('plugins.autocomplete') -- apparently this sets up luasnip?? where past me?? where??
require('plugins.code-runner')
require('plugins.autopairs')

-- removed
--require('plugins.bufferline')
--require('plugins.presence')
--require('plugins.telescope')
