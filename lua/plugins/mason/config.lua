-- Mason barely requires a setup. I've made a file for it here instead of including it in the
-- plugin setups file so I can add a couple comments. Keep in mind that Mason just handles 
-- installing language servers, it doesn't handle setting them up. You can do that in the 
-- nvim-lspconfig config file following the config for whatever LSP you installed.
require('mason').setup()
