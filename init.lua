-- simple modular config system. can sometimes fail when using windows, so it's
-- preferable to use WSL with neovim, instead of using neovim on windows.

-- apparently this is supposed to speed things up?
--vim.loader.enable()

require("core.plugins.setup")

-- some plugin configs are doing things to my options, so I require them here
-- to override any changes they make.
require("core.config.options")
require("core.config.keymaps")
