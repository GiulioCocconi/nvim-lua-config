# Installation

**I don't recommend to install my config (especially without reading its code), you can copy the parts you like into yours instead**

## Deps
This config has some dependences:
- NeoVim >= 0.6.0
- node
- ctags

### How to install NeoVim
You can install the official appImage running this command:
```
sudo wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage -o /usr/bin/nvim && sudo chmod +x /usr/bin/nvim
```
If you prefer you can also build it from source following [these](https://github.com/neovim/neovim/wiki/Building-Neovim) instructions.

**Remember that if you are using a rolling release (such as Arch Linux) the latest version is probably already available in the default repository**


### How to install node
You can download the node binary release from the [official website](https://nodejs.org/en/download/). To install it you can follow the [instructions](https://github.com/nodejs/help/wiki/Installation#how-to-install-nodejs-via-binary-archive-on-linux) present in the project's repo.

With Debian/Ubuntu you can instead use the [NodeSource](https://github.com/nodesource/distributions/blob/master/README.md#debinstall) NodeJS distribution.

### How to install ctags
- Debian: `sudo apt install exuberant-ctags`
- Arch: `sudo pacman -S ctags`

## Install the config
You can install the config using this command:
```
git clone --depth=1 https://github.com/GiulioCocconi/nvim-lua-config ~/.config/nvim && nvim
```

NeoVim will start to download the required plugins.
