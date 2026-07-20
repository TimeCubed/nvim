-- actual plugin config.
-- the order of these is completely haphazard "when I added it"-style
-- I genuinely don't know if there's a proper order to this or not.
--
-- nvm scratch that, I just sorted everything. it's still haphazard, but no
-- longer a "when I added" flavor of haphazard. not sure what flavor it is,
-- but it is haphazard.

-- appearance
require('plugins.night-owl')
require('plugins.treesitter')
require('plugins.treesitter-textobjects')
require('plugins.lualine')
require('plugins.indent-blankline')
require('plugins.nvim-web-devicons')
require('plugins.tabscope')

-- functionality
require('plugins.autopairs')
require('plugins.telescope')
require('plugins.plenary')
require('plugins.code-runner')
require('plugins.winresize')
require('plugins.nvim-ufo')
require('plugins.comment')

-- auto completion
require('plugins.mason')
require('plugins.nvim-lspconfig')
require('plugins.autocomplete') -- apparently this sets up luasnip?? where past me?? where??
require('plugins.cmp-nvim-lsp-signature-help')
require('plugins.cmp-buffer')
require('plugins.cmp-path')
require('plugins.cmp-nvim-lsp')
require('plugins.cmp_luasnip')

-- snippets support
require('plugins.luasnip')

-- removed
--require('plugins.bufferline')
--require('plugins.presence')

-- start lazy.nvim
require('plugins.lazy')


local registry = require('core.plugins.registry')
registry.call_setups()

require('plugins.colorscheme')
