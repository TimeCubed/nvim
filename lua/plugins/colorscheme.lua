-- night-owl setup.

local nightowl = require("night-owl")

local options = {
	bold = true,

	-- disable italics as they don't work well with pixelspace v4
	italics = false,
	underline = true,
	undercurl = false,
	transparent_background = false,
}

nightowl.setup(options)

--require("gruv-vsassist").setup({
--	transparent = false,
--	italic_comments = false,
--	disable_nvimtree_bg = true,
--
--	color_overrides = {
--		vscBack = "#1a1a1a",
--	}
--})

--vim.cmd('colorscheme night-owl')
--vim.cmd('colorscheme gruv-vsassist')

-- these options here are for when I used to use habamax as my default
-- colorscheme, but using a custom theme + lualine means these aren't needed
-- anymore. they also don't do anything with lualine.
--vim.cmd('hi StatusLine guibg=#30363F guifg=#A0A8B5')
--vim.cmd('hi StatusLineNC guibg=#909090 guifg=#101010')
--
local colors = {
	fg = "#d6deeb",
	bg = "#000000",
	indentChar = "#1f395d",
	indentCharActive = "#7e97ac",
	lineNumber = "#4b6479",
	lineNumberActive = "#c5e4fc",
	tabActive = "#0b2942",
	tabInactive = "#01111d",
	param = "#BFCEFF",
	visual = "#1d3b53",
	ui_border = "#5f7e97",
	bright = {
		red = "#FF007B",
		green = "#AEFF93",
		yellow ="#FFEF89",
		blue = "#5B8FFF",
		blue2 = "#829FFF",
		magenta = "#E7A5FF",
		cyan = "#70D4FF",
		--teal = "#baebe2",
		orange = "#FFB25B",
		orange2 = "#FFC76D",
		white = "#FFFFFF",
		dusty = "#91ADAD",
		black = "#465059",
	},
	dark = {
		red = "#C1005D",
		green = "#74B759",
		yellow ="#BAAD64",
		blue = "#436ABC",
		--blue2 = "#5D72B7",
		magenta = "#9D70AD",
		cyan = "#BF8644",
		--teal = "#549FBF",
		orange = "#BF8644",
		--orange2 = "#BA8F50",
		white = "#B2B2B2",
		dusty = "#637777",
		dark1 = "#021320",
		dark2 = "#262A39",
		dark3 = "#d2dee7",
		--dark4 = "#36414A",
		black = "#000000",
	},
}

local function hl(id, name, def)
	vim.api.nvim_set_hl(id, name, def)
end

local background_color = options.transparent_background and "NONE" or colors.bg

-- builtin.
hl(0, "Normal",       { fg = colors.fg,               bg = background_color })
hl(0, "SignColumn",   { fg = "NONE",                  bg = colors.dark.dark1 })
hl(0, "Pmenu",        { fg = "NONE",                  bg = colors.dark.dark1 })
hl(0, "PmenuSel",     { fg = "NONE",                  bg = colors.dark.dark2 })
hl(0, "Comment",      { fg = colors.dark.dusty,       bg = "NONE" })
hl(0, "FloatBorder",  { fg = colors.ui_border,        bg = colors.dark.dark1 })
hl(0, "FloatTitle",   { fg = colors.dark.purple,      bg = colors.dark.dark1, bold = options.bold})
hl(0, "LineNr",       { fg = colors.lineNumber,       bg = "NONE" })
hl(0, "CursorLineNr", { fg = colors.lineNumberActive, bg = "NONE" })
hl(0, "CursorLine",   { fg = "NONE",                  bg = colors.dark.dark1 })
hl(0, "CursorColumn", { fg = "NONE",                  bg = colors.dark.dark1 })
hl(0, "ColorColumn",  { fg = "NONE",                  bg = colors.dark.dark1 })
hl(0, "Visual",       { fg = "NONE",                  bg = colors.visual})
hl(0, "Conceal",      { fg = colors.ui_border,        bg = "NONE" })
hl(0, "ErrorMsg",     { link = "Error" })
hl(0, "Variable",     { fg = colors.param,            bg = "NONE" })
hl(0, "String",       { fg = colors.bright.orange,    bg = "NONE" })
hl(0, "Constant",     { fg = colors.bright.blue,      bg = "NONE" })
hl(0, "Number",       { fg = colors.bright.orange,    bg = "NONE" })
hl(0, "Boolean",      { fg = colors.bright.red,       bg = "NONE" })
hl(0, "Identifier",   { fg = colors.bright.blue2,     bg = "NONE" })
hl(0, "Function",     { fg = colors.bright.blue2,     bg = "NONE" })
hl(0, "Operator",     { fg = colors.bright.magenta,   bg = "NONE" })
hl(0, "Type",         { fg = colors.bright.orange2,   bg = "NONE" })
hl(0, "Keyword",      { fg = colors.bright.magenta,   bg = "NONE" })
hl(0, "Statement",    { fg = colors.bright.magenta,   bg = "NONE" })
hl(0, "Conditional",  { fg = colors.bright.magenta,   bg = "NONE" })
hl(0, "Include",      { fg = colors.bright.magenta,   bg = "NONE" })
hl(0, "PreProc",      { fg = colors.bright.magenta,   bg = "NONE" })
hl(0, "Error",        { fg = colors.bright.red,       bg = "NONE" })
hl(0, "TabLineSel",   { fg = colors.dark.dark3,       bg = colors.tabActive })
hl(0, "Warning",      { fg = colors.bright.orange,    bg = "NONE" })

-- lsp.
hl(0, "DiagnosticError", { link = "Error" })
hl(0, "LspInfoBorder",   { fg = colors.ui_border,    bg = "NONE" })
hl(0, "LspInlayHint",    { fg = colors.bright.green, bg = "NONE" })

-- treesitter.
hl(0, "@variable.builtin",      { fg = colors.bright.red,     bg = "NONE" })
hl(0, "@variable.parameter",    { fg = colors.param,          bg = "NONE" })
hl(0, "@constant",              { fg = colors.bright.blue,    bg = "NONE" })
hl(0, "@constant.builtin",      { fg = colors.bright.blue,    bg = "NONE" })
hl(0, "@constant.macro",        { fg = colors.bright.red,     bg = "NONE" })
hl(0, "@module",                { fg = colors.bright.orange,  bg = "NONE" })
hl(0, "@module.builtin",        { fg = colors.bright.orange,  bg = "NONE" })
hl(0, "@label",                 { fg = colors.bright.cyan,    bg = "NONE" })
hl(0, "@string",                { link = "String" })
hl(0, "@string.regexp",         { fg = colors.bright.cyan,    bg = "NONE" })
hl(0, "@string.escape",         { fg = colors.bright.magenta, bg = "NONE" })
hl(0, "@string.special",        { fg = colors.bright.orange,  bg = "NONE" })
hl(0, "@string.special.url",    { fg = colors.dark.blue,      bg = "NONE", underline = options.underline})
hl(0, "@character",             { fg = colors.bright.blue,    bg = "NONE" })
hl(0, "@character.special",     { fg = colors.bright.magenta, bg = "NONE" })
hl(0, "@boolean",               { link = "Boolean" })
hl(0, "@number",                { link = "Number" })
hl(0, "@number.float",          { link = "Number" })
hl(0, "@type",                  { link = "Type" })
hl(0, "@type.builtin",          { fg = colors.bright.green,   bg = "NONE" })
hl(0, "@attribute",             { fg = colors.bright.red,     bg = "NONE" })
hl(0, "@property",              { fg = colors.bright.cyan,    bg = "NONE" })
hl(0, "@function",              { link = "Function" })
hl(0, "@function.builtin",      { fg = colors.bright.orange,  bg = "NONE" })
hl(0, "@constructor",           { fg = colors.bright.orange2, bg = "NONE" })
hl(0, "@operator",              { link = "Operator" })
hl(0, "@keyword",               { link = "Keyword" })
hl(0, "@punctuation.bracket",   { fg = colors.bright.yellow,  bg = "NONE" })
hl(0, "@punctuation.special",   { fg = colors.bright.orange2, bg = "NONE" })
hl(0, "@comment",               { link = "Comment" })
hl(0, "@comment.documentation", { fg = colors.dark.green,     bg = "NONE" })
hl(0, "@comment.error",         { link = "Error" })
hl(0, "@comment.warning",       { link = "Warning" })
hl(0, "@comment.todo",          { fg = colors.bright.blue,    bold = true })
hl(0, "@comment.note",          { fg = colors.bright.cyan,    bg = "NONE" })
hl(0, "@diff.plus",             { fg = colors.bright.green,   bg = "NONE" })
hl(0, "@diff.minus",            { fg = colors.bright.red,     bg = "NONE" })
hl(0, "@diff.delta",            { fg = colors.bright.yellow,  bg = "NONE" })
hl(0, "@tag",                   { fg = colors.bright.dusty,   bg = "NONE" })
hl(0, "@tag.attribute",         { fg = colors.bright.green,   bg = "NONE" })
hl(0, "@tag.delimiter",         { fg = colors.dark.cyan,      bg = "NONE" })

-- indent blankline.
hl(0, "IblIndent", { fg = colors.indentChar,  bg = "NONE" })
hl(0, "IblScope",  { fg = colors.indentCharActive, bg = "NONE" })

-- nvim-cmp.
hl(0, "CmpItemKind",          { fg = colors.dark.orange, bg = "NONE" })
hl(0, "CmpItemKindVariable",  { link = "@type.builtin" })
hl(0, "CmpItemKindConstant",  { link = "@constant" })
hl(0, "CmpItemKindStruct",    { link = "@type" })
hl(0, "CmpItemKindInterface", { fg = colors.bright.red,  bg = "NONE" })
hl(0, "CmpItemKindText",      { fg = colors.bright.cyan, bg = "NONE" })
hl(0, "CmpItemKindFunction",  { link = "Function" })
hl(0, "CmpItemKindMethod",    { link = "Function" })
hl(0, "CmpItemKindKeyword",   { link = "Keyword" })
hl(0, "CmpItemKindProperty",  { link = "@property" })
hl(0, "CmpItemKindUnit",      { link = "@property" })

vim.g.terminal_color_0  = colors.dark.black
vim.g.terminal_color_1  = colors.dark.red
vim.g.terminal_color_2  = colors.dark.green
vim.g.terminal_color_3  = colors.dark.yellow
vim.g.terminal_color_4  = colors.dark.blue
vim.g.terminal_color_5  = colors.dark.magenta
vim.g.terminal_color_6  = colors.dark.cyan
vim.g.terminal_color_7  = colors.dark.white

vim.g.terminal_color_8  = colors.bright.black
vim.g.terminal_color_9  = colors.bright.red
vim.g.terminal_color_10 = colors.bright.green
vim.g.terminal_color_11 = colors.bright.yellow
vim.g.terminal_color_12 = colors.bright.blue
vim.g.terminal_color_13 = colors.bright.magenta
vim.g.terminal_color_14 = colors.bright.cyan
vim.g.terminal_color_15 = colors.bright.white
--]]

--[[
hl(0, "Normal",       { fg = colors.fg, bg = background_color })
hl(0, "SignColumn",   { fg = "NONE", bg = colors.bg })
hl(0, "Pmenu",        { fg = "NONE", bg = colors.dark })
hl(0, "PmenuSel",     { fg = "NONE", bg = colors.quickfix_line })
hl(0, "Comment",      { fg = colors.dark_cyan, bg = "NONE" })
hl(0, "Folded",       { fg = colors.dark_cyan, bg = colors.folded_bg })
hl(0, "FoldColumn",   { fg = colors.dark_cyan, bg = colors.bg })
hl(0, "FloatBorder",  { fg = colors.ui_border, bg = colors.bg })
hl(0, "FloatTitle",   { fg = colors.purple, bg = colors.bg })
hl(0, "Whitespace",   { fg = colors.blue14, bg = "NONE" })
hl(0, "VertSplit",    { fg = colors.gray, bg = "NONE" })
hl(0, "WinSeparator", { fg = colors.gray, bg = "NONE" })
hl(0, "LineNr",       { fg = colors.line_number_fg, bg = "NONE" })
hl(0, "CursorLineNr", { fg = colors.line_number_active_fg, bg = "NONE" })
hl(0, "CursorLine",   { fg = "NONE", bg = colors.dark2 })
hl(0, "CursorColumn", { fg = "NONE", bg = colors.dark2 })
hl(0, "lCursor",      { fg = colors.cursor_fg, bg = colors.cursor_bg })
hl(0, "Cursor",       { fg = colors.cursor_fg, bg = colors.cursor_bg })
hl(0, "CursorIM",     { fg = colors.cursor_fg, bg = colors.cursor_bg })
hl(0, "TermCursor",   { fg = colors.cursor_fg, bg = colors.cursor_bg })
hl(0, "ColorColumn",  { fg = "NONE", bg = colors.dark2 })
hl(0, "NormalFloat",  { fg = "NONE", bg = colors.bg, sp = "NONE", blend = 0 })
hl(0, "Visual",       { link = "@nowl.visual.active" })
hl(0, "DiffAdd",      { fg = colors.bg, bg = colors.sign_add })
hl(0, "DiffChange",   { fg = colors.bg, bg = colors.sign_change })
hl(0, "DiffDelete",   { fg = colors.bg, bg = colors.sign_delete })
hl(0, "QuickFixLine", { fg = "NONE", bg = colors.quickfix_line })
hl(0, "MatchParen",   { fg = "NONE", bg = colors.match_paren, sp = "NONE" })
hl(0, "Conceal",      { fg = colors.ui_border2, bg = "NONE" })
hl(0, "Directory",    { fg = colors.blue, bg = "NONE" })
hl(0, "Title",        { fg = colors.title, bg = "NONE" })
hl(0, "ErrorMsg",     { link = "Error" })
hl(0, "Search",       { fg = "NONE", bg = colors.search_blue })
hl(0, "IncSearch",    { fg = "NONE", bg = colors.incremental_search_blue })
hl(0, "NonText",      { fg = colors.gray6, bg = "NONE" })
hl(0, "Variable",     { fg = colors.parameter, bg = "NONE" })
hl(0, "String",       { fg = colors.light_orange, bg = "NONE" })
hl(0, "Constant",     { fg = colors.blue, bg = "NONE" })
hl(0, "Number",       { fg = colors.orange, bg = "NONE" })
hl(0, "Boolean",      { fg = colors.red, bg = "NONE" })
hl(0, "Identifier",   { fg = colors.light_blue, bg = "NONE" })
hl(0, "Function",     { fg = colors.blue, bg = "NONE" })
hl(0, "Operator",     { fg = colors.magenta, bg = "NONE" })
hl(0, "Type",         { fg = colors.orange2, bg = "NONE" })
hl(0, "Keyword",      { fg = colors.magenta, bg = "NONE" })
hl(0, "Statement",    { fg = colors.magenta, bg = "NONE" })
hl(0, "Conditional",  { fg = colors.magenta, bg = "NONE" })
hl(0, "Include",      { fg = colors.magenta, bg = "NONE" })
hl(0, "PreProc",      { fg = colors.magenta4, bg = "NONE" })
hl(0, "Special",      { fg = colors.orange2, bg = "NONE" })
hl(0, "Tag",          { fg = colors.light_cyan, bg = "NONE" })
hl(0, "Delimiter",    { fg = colors.fg, bg = "NONE" })
hl(0, "Error",        { fg = colors.error_red, bg = "NONE" })
hl(0, "TabLineSel",   { fg = colors.gray2, bg = colors.tab_active_bg })
hl(0, "TabLine",      { fg = colors.ui_border, bg = colors.tab_inactive_bg })
hl(0, "TabLineFill",  { fg = colors.bg, bg = "NONE" })
hl(0, "tomlTable",    { fg = colors.green, bg = "NONE" })
hl(0, "tomlKey",      { fg = colors.magenta, bg = "NONE", nocombine = true })
hl(0, "tomlKeySq",    { fg = colors.magenta, bg = "NONE", nocombine = true })
]]
