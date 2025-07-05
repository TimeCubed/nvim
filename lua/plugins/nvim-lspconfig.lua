-- nvim-lspconfig config.
-- updated to work with nvim v0.11, won't work on previous neovim releases.

local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

vim.lsp.capabilities = vim.tbl_deep_extend(
	'force',
	lsp_defaults.capabilities,
	require('cmp_nvim_lsp').default_capabilities()
)

vim.lsp.config('clangd', {
	cmd = {'clangd'},
	root_markers = {'compile_commands.json', 'makefile', '.git'},
	filetypes = {'c', 'cpp'},
})
vim.lsp.enable('clangd')

vim.lsp.config('rust_analyzer', {
	filetypes = {"rs"},
	settings = {
		["rust-analyzer"] = {
			workspace = {
				symbol = {
					search = {
						kind = "all_symbols"
					}
				}
			}
		},
	}
})
vim.lsp.enable('rust_analyzer')

vim.lsp.config('lua_ls', {

})
vim.lsp.enable('lua_ls')

vim.lsp.config('pyright', {

})
vim.lsp.enable('pyright')

vim.lsp.config('glsl_analyzer', {

})
vim.lsp.enable('glsl_analyzer')

-- this autocommand sets up all LSP action keybinds when an LSP "attaches"
-- (whatever that means)
vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP actions',
	callback = function()
		-- not sure what this does.
		local bufmap = function(mode, lhs, rhs)
			local opts = {
				buffer = true,
			}
			vim.keymap.set(mode, lhs, rhs, opts)
		end

		-- past me is lying, she forgot half these keybinds existed for a full YEAR.
		-- THIS AIN'T INTUITIVE AT ALL
		bufmap('n', '<leader>k'  , '<cmd>lua vim.lsp.buf.hover()<CR>')              -- Hover options
		bufmap('n', '<leader>jd' , '<cmd>lua vim.lsp.buf.definition()<CR>')         -- Jump to Definition
		bufmap('n', '<leader>jde', '<cmd>lua vim.lsp.buf.declaration()<CR>')        -- Jump to DEclaration
		bufmap('n', '<leader>ji' , '<cmd>lua vim.lsp.buf.implementation()<CR>')     -- Jump to Implementation
		bufmap('n', '<leader>jtd', '<cmd>lua vim.lsp.buf.type_definition()<CR>')    -- Jump to Type Definition
		bufmap('n', '<leader>re'  , '<cmd>lua vim.lsp.buf.references()<CR>')         -- References
		bufmap('n', '<leader>fs' , '<cmd>lua vim.lsp.buf.signature_help()<CR>')     -- Function Signature

		-- renames the current symbol the cursor is hovering over.
		-- there you go, past me. that's what it does.
		bufmap('n', '<leader>rn'       , '<cmd>lua vim.lsp.buf.rename()<CR>')             -- Rename

		-- 
		bufmap('n', '<leader>uh' , '<cmd>lua vim.lsp.buf.code_action()<CR>')        -- Quick actions
		bufmap('x', '<leader>uh' , '<cmd>lua vim.lsp.buf.range_code_action()<CR>')  -- Quick actions

		-- diagnostic keybinds. I still have no idea what this does.
		bufmap('n', '<leader>d'  , '<cmd>lua vim.diagnostic.open_float()<CR>')      -- Diagnostics open float
		bufmap('n', '<leader>dp' , '<cmd>lua vim.diagnostic.goto_prev()<CR>')       -- Diagnostics go to Previous
		bufmap('n', '<leader>dn' , '<cmd>lua vim.diagnostic.goto_next()<CR>')       -- Diagnostics go to next
	end
})

-- this is disabled by default as of v0.11, so I reenable it here.
vim.diagnostic.config ({
	virtual_text = true,
})
