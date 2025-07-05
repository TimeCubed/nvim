# nvim

This repository is for my personal (somewhat minimalistic) neovim config. This originally started as
a way to learn the basics of using neovim and how to configure it, but it has slowly grown into a
fast, minimalistic, and somewhat versatile config (for me, at least). It's modular, meaning the
config is separated into several smaller files, so it's more convenient to maintain or modify. There
used to be a lot of comments around the config, but I've removed/rewritten most of them since I felt
like they were too attached to my old personality, which is something I want to get away from
(sorry, that was too personal, wasn't it?). Hopefully it isn't too difficult to figure out how
things work in this config still.

Also, this config does not work well with neovim when on windows. I've run into quite a lot of
issues when working on this config myself while on windows, and switching to WSL fixed all of them.
I'm not sure why, but windows doesn't like it when you do modular configs.

# Config Details & Structure

This config uses Lazy.nvim as its package manager. It's fast, and lightweight because it lazy-loads
plugins (idk what that means either, dw). Plugins can be added in `lua/plugins/lazy.lua`, in the
call to `lazy.setup()`, and their config files can be added in `lua/core/plugins/setup.lua`. My
plugin configs are all located in `lua/plugins/`, but you could put them pretty much anywhere if you
really wanted to, so long as you properly `require` them in the `setup.lua` file. The non-plugin
stuff is in `lua/core/`, where you'll also find a `keymaps.lua` and a `options.lua` file. These have
the keymap config, and miscellaneous options respectively.

# Installation

If you want to use this config, all you have to do is go to where your neovim config folder is
located (on linux, this is usually `~/.config/nvim/`. not sure where it is on windows or macos) in a
terminal, and run
```
git clone https://github.com/TimeCubed/nvim.git
```
and that'll clone my config into your config folder.
