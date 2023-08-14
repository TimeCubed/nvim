# My NeoVim Config

This github repo is for my NeoVim config files. My config is quite minimalistic. You won't find a
lot of pre-installed plugins here and this is most likely something a lot of people will find a  
little bad. This config doesn't have stuff like lualine or bufferline or even nvim-tree, instead
I use Telescope for navigating through files. I used this config (made entirely by myself) to help
learn neovim, and that's why this config may feel "empty" or "unusable" for some people, as I used
this config to learn to use the default Vim motions. There are a lot of comments all around the
config, and I highly recommend reading them to get a better understanding of how stuff is 
structured.

Another note to take is that this config is better used on WSL or Linux rather than on Windows.
This is because the modularity of this config may not work on Windows (and I've experienced a 
couple issues myself when I wrote this config on windows) so if you're using neovim on Windows, I 
highly recommend installing a WSL distro instead and using NeoVim there.

# Technical Details

I use the Lazy.nvim package manager for, well, managing packages. I've had great luck using it before
and it's been quite easy to use. For plugin setups, there are 2 main files. One of them is located in
`lua/core/plugins/setup.lua`, and the other in `lua/plugins/lazy/lazy-config.lua`. The setup.lua file
is to setup all of the plugin configs, and the other one is the config for Lazy.nvim. All of my 
plugin setups are located in `lua/plugins`. I keep all of the configs in separate folders, and this
may be a little annoying for some who prefer using just single files in a folder, but I made it that
way, and I can't be bothered enough to refactor the config to use single files (although it's not
actually *that* difficult). All of the keymaps are located at `lua/core/config/keymaps.lua`, and
almost all of them have comments over them that explain their use case. The NeoVim options are
located at `lua/core/config/options.lua`, right next to the keymaps file. The basic options don't
have any comments attached to them, while some of the other options may have some attached to explain
why I used them. Again I highly recommend reading through all of the comments in the files here (more
importantly, the `options.lua` and `keymaps.lua` files) to understand how stuff works. I have a 
couple nice keybinds in the `keymaps.lua` file, and feel free to copy them over to your config with
whatever keybind works best for you.

# Installation

To install this config, just create a folder named 'nvim' at `~/.config` (if you're on Linux or WSL on
Windows, please use WSL), and then you can clone the repository using the following command:
```
git clone https://github.com/TimeCubed/nvim ~/.config/nvim/
```
and this will clone the latest config of mine to your `~/.config/nvim` folder. It's that simple!

# Other Details

If you would like to fork this config or modify it or whatever you would want to do, feel free to do
so. I know that a lot of my config conflicts with a lot of people's preferences, but that's what a
preference is, it's subjective! You may not like this config, so if you would like to make any
changes, feel free to do so. Also, I will not be accepting pull requests or such, this is not a
public config, it's a personal one. Although, I will regularly check the Issues tab if there's any
issue in the config, and I will respond accordingly. Thank you for taking the time to read this, and
have fun using my config!
