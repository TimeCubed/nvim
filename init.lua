-- My init.lua file is quite simple as I use a modular system like many other
-- neovim users. Keep in mind that sometimes this may not work on the windows
-- version of neovim, as it breaks a lot and sometimes it just won't work at all.
-- If you use the windows version, I highly recommend installing a WSL distro and
-- using that to code in neovim instead of using windows as neovim is a lot easier
-- to use in WSL than windows. You can also modify the options.lua file included 
-- in this line after to use a powershell as the default shell for neovim if you
-- absolutely need to use windows to compile stuff.

require("core.config.options")
require("core.config.keymaps")

require("core.plugins.setup")
