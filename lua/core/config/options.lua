local opt = vim.opt

-- Line numbers + relative numbers

opt.number = true
opt.relativenumber = true

-- Indentation options

opt.autoindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smarttab = true
opt.smartindent = true

-- I work a lot in C or C++ and I usually have Makefiles for each of my projects.
-- As some of you may know, make requires that the file use tabs instead of spaces
-- for indentation, so I set expand tab to false so I don't have to go through that
-- kind of hassle every time I want to make a change to my Makefile or add a new
-- command or something like that.
opt.expandtab = false

-- Shell

-- I use neovim on WSL on the Kali-Linux distro (don't ask why) and I just set the shell
-- to be kali.exe, this may break stuff if you try running <leader>tr for the terminal
-- so you may want to change this. I have to use this so neovim doesn't run powershell or
-- something when I open the terminal.

opt.shell = 'kali.exe'

-- Searching

opt.ignorecase = true
opt.smartcase = true

-- I set hlsearch to false here so I can have an easier time looking for references for a 
-- variable in a file or something. I know that nvim-lsp already does this but it's still
-- handy nontheless. You can enable this if you would like.
--opt.hlsearch = false

-- Wrapping

opt.wrap = false

-- Appearance

opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = 'yes'

-- Miscellaneous

opt.backspace = 'indent,eol,start'

opt.splitright = true
opt.splitbelow = true

--opt.clipboard = 'unnamed' -- removed for slowness reasons
opt.iskeyword:append('-')
opt.laststatus = 3 -- makes the status line global 
