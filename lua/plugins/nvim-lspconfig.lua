local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
	'force',
	lsp_defaults.capabilities,
	require('cmp_nvim_lsp').default_capabilities()
)

-- Here is where I setup clangd for C and C++. Soon I'll try adding support for
-- rust-analyzer, but I just can't seem to find any sources to understand how to
-- properly set it up.

lspconfig.clangd.setup({
	single_file_support = true,
	flags = {
		debounce_text_changes = 0,
	},
})

-- Here I create an aut command on the event 'LspAttach', which fires whenever an
-- LSP gets attached to a file or buffer. I use it to set up stuff like keymaps
-- when an LSP server is fired up so I can find and do what I want.
vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP actions',
	callback = function()
		-- This function here doesn't exactly need to be used, I just use it here
		-- instead of writing vim.keymap.set everywhere. It does pretty much the
		-- same thing as vim.keymap.set(mode, lhs, rhs, {buffer = true}) but it's
		-- easier to not write {buffer = true} at the end of every key map and use
		-- this instead.
		local bufmap = function(mode, lhs, rhs)
			local opts = {buffer = true}
			vim.keymap.set(mode, lhs, rhs, opts)
		end

		-- These next keymaps are all for the LSP. Most of these are just plain
		-- abbreviations for whatever they're meant to do, so in a pinch you can 
		-- quickly remember what to do by just thinking of what you want to do and
		-- typing it out.
		bufmap('n', '<leader>k'  , '<cmd>lua vim.lsp.buf.hover()<CR>')              -- Hover options
		bufmap('n', '<leader>jd' , '<cmd>lua vim.lsp.buf.definition()<CR>')         -- Jump to Definition
		bufmap('n', '<leader>jde', '<cmd>lua vim.lsp.buf.declaration()<CR>')        -- Jump to DEclaration
		bufmap('n', '<leader>ji' , '<cmd>lua vim.lsp.buf.implementation()<CR>')     -- Jump to Implementation
		bufmap('n', '<leader>jtd', '<cmd>lua vim.lsp.buf.type_definition()<CR>')    -- Jump to Type Definition
		bufmap('n', '<leader>r'  , '<cmd>lua vim.lsp.buf.references()<CR>')         -- References
		bufmap('n', '<leader>fs' , '<cmd>lua vim.lsp.buf.signature_help()<CR>')     -- Function Signature

		-- This keymap below is probably for refactoring. I've probably
		-- forgotten about this keymap like a hundred times when I want to refactor 
		-- some variable but it's handy to know this one. I don't actually know
		-- what this does, but I'm sure you can figure it out.
		bufmap('n', '<F2>'       , '<cmd>lua vim.lsp.buf.rename()<CR>')             -- Rename

		-- Here's a funny story: I had no idea what to map these next 2 keymaps to,
		-- <leader>qa is quite hard to type for me so I just started looking around
		-- on my keyboard to see what keymap would be nice to type, and <leader>uh
		-- was a good one. I had a little joke for what it meant and I thought "Well,
		-- 'uh' is usually the noise you make when you get an error, so it's easy to 
		-- remember that way".
		bufmap('n', '<leader>uh' , '<cmd>lua vim.lsp.buf.code_action()<CR>')        -- Quick actions
		bufmap('x', '<leader>uh' , '<cmd>lua vim.lsp.buf.range_code_action()<CR>')  -- Quick actions

		-- These are several diagnostics keymaps. I have never used these before so
		-- to be quite honest I have no idea what they do.
		bufmap('n', '<leader>d'  , '<cmd>lua vim.diagnostic.open_float()<CR>')      -- Diagnostics open float
		bufmap('n', '<leader>dp' , '<cmd>lua vim.diagnostic.goto_prev()<CR>')       -- Diagnostics go to Previous
		bufmap('n', '<leader>dn' , '<cmd>lua vim.diagnostic.goto_next()<CR>')       -- Diagnostics go to next
	end
})
