-- Although this file is mostly a config for nvim_cmp, I'm not entirely
-- sure why I named this "autocomplete.lua" instead of "nvim-cmp.lua".
-- I think the only reason I named it autocomplete.lua is because I
-- actually wrote this config first in Windows PowerShell and it did
-- not have module support as it kept complaining that it couldn't find
-- my config modules, so I had to resort to using a single 'init.lua' file
-- and add comments explaining what parts were setups for what plugins,
-- and I just so happened to name it "Auto completion setup", which is what
-- this file used to be named before I refactored this config.

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')
local luasnip = require('luasnip')

local select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	sources = {
		-- This current autocomplete setup for nvim_cmp is quite slow. I
		-- heard somewhere that setting it up like this instead would make
		-- it so it prioritizes the LSP and luasnip suggestions, but if there
		-- are none of those it would instead give you suggestions from the
		-- buffer, which would be labeled "Text" at the end. But sadly this
		-- doesn't work and it ends up breaking the config, so instead I
		-- seperated all of the stuff into separate arrays.
		--[[{
			name = 'nvim_lsp',
			name = 'luasnip',
			name = 'path',
		},
		{
			name = 'buffer',
		} ]]--
		{name = 'nvim_lsp'},
		{name = 'buffer'},
		{name = 'path'},
		{name = 'luasnip'},
	},
	window = {
		-- This used to be the other way around where the documentation would
		-- be bordered, while the completion menu itself was unbordered. I
		-- preferred having it this way instead. You can comment or uncomment
		-- this as you like to get different styles of menus if you want.
		-- I think there many different styles for this though other than
		-- bordered and unbordered.

		completion = cmp.config.window.bordered(),
		--documentation = cmp.config.window.bordered(),
	},
	-- This formatting option ended up slowing down the completion popup
	-- significantly for whatever reason, so I disabled it here so it's
	-- not slow like it used to be.

	--[[formatting = {
		fields = {'menu', 'abbr', 'kind'},
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = 'l',
				luasnip = 's',
				buffer = 'b',
			}

			item.menu = menu_icon[entry.source.name]
			return item
		end,
	}, ]]--
	mapping = {
		-- These maps are all from the website I've mentioned in other
		-- files. They're all quite useful.
		['<Up>'] = cmp.mapping.select_prev_item(select_opts),
		['<Down>'] = cmp.mapping.select_next_item(select_opts),

		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),

		['<C-e>'] = cmp.mapping.abort(),

		-- The option 'select' means when nvim_cmp tries to confirm and
		-- complete something, it will either select the first item in
		-- the list automatically, or it won't. I mapped <CR> to have
		-- autoselection off because it annoyed me greatly while I was 
		-- writing these comments around the config.
		['<C-y>'] = cmp.mapping.confirm({select = true}),
		['<Tab>'] = cmp.mapping.confirm({select = true}),
		['<CR>'] = cmp.mapping.confirm({select = false}),

		['<C-f>'] = cmp.mapping(function(fallback)
			if luasnip.jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, {'i', 's'}),

		['<C-b>'] = cmp.mapping(function(fallback)
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {'i', 's'}),

		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item(select_opts)
			else
				fallback()
			end
		end, {'i', 's'}),
	},
})
