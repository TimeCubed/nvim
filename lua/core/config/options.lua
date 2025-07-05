local opt = vim.opt
-- line numbers + relative numbers
opt.number = true
opt.relativenumber = true

-- indentation options

opt.autoindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smarttab = true
opt.smartindent = true

-- don't expand tabs to spaces
opt.expandtab = false

-- default shell, used with <leader>tr keybind
opt.shell = 'bash'

-- searching

opt.ignorecase = true
opt.smartcase = true

-- highlight searches
--opt.hlsearch = false

-- wrapping
opt.wrap = false

-- appearance
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = 'yes'

-- miscellaneous

-- not sure what this does, but I'm scared to delete it.
-- it can stay.
opt.backspace = 'indent,eol,start'

opt.splitright = true
opt.splitbelow = true

-- idk what this does either, so it'll stay as well.
opt.iskeyword:append('-')

opt.laststatus = 3 -- makes the status line global 
