# dotFiles
Clone the repository:
```shell
git clone git@github.com:nicolasdupouy/dotFiles.git
```

## Profile
### MacOS
#### Link the configuration file
```shell
ln -s $PWD/MacOS/.profile.d/.profile.sh ~/.profile.nicolas.sh
echo "source ~/.profile.nicolas.sh" >> ~/.bashrc
echo "source ~/.profile.nicolas.sh" >> ~/.bash_profile
```

### FreeBSD
#### Link the configuration file
```shell
ln -s $PWD/FreeBSD/.profile.d/.profile.sh ~/.profile.nicolas.sh
echo "if [ -f \"$HOME/.profile.nicolas.sh\" ]; then
   . $HOME/.profile.nicolas.sh
fi" >> ~/.bashrc
```

## i3
### Link the configuration file
```shell
ln -s $PWD/Common/i3/config ~/.config/i3/config
```

## Tmux
### Link the configuration file
```shell
ln -s $PWD/Common/Tmux/.tmux.conf ~/.tmux.conf
```

### Fetch and source the plugins
Launch `tmux` and hit `prefix + I` (`Ctrl-q + I`) to fetch the plugin and source it. You should now be able to use the plugin.


## Neovim
### Configuration directory
To start, you must know the `Neovim` configuration path on your system. In `nvim` type:

```shell
:echo stdpath("config")
```

Apparently, in all [Unix-like](https://en.wikipedia.org/wiki/Unix-like) OS the configuration path is `~/.config/nvim`.

### Data directory
The datas should be stored in `~/.local/share/nvim/`. To check, type (in `nvim`):

```shell
:echo stdpath("data")
```

### Setup
Use the LUA configuration scripts presents in the repository:

```shell
mkdir ~/.config/nvim
ln -s $PWD/Common/Neovim/lua/ ~/.config/nvim/lua
ln -s $PWD/Common/Neovim/init.lua ~/.config/nvim/init.lua
```

As I use [lazy.nvim](https://github.com/folke/lazy.nvim), it will downloaded and install the plugins the first time you launch `nvim`.

**NB:** In order to use the live grep, [ripgrep](https://github.com/BurntSushi/ripgrep) must be installed:
```shell
arch -arm64 brew install ripgrep  (under MacOS)
sudo pkg install ripgrep          (under FreeBSD)
```

#### Troubleshoot
##### Fix: (WARNING: No Python executable found that can `import neovim`. Using the first available executable for diagnostics.)
To fit it, install [Pynvim](https://github.com/neovim/pynvim) which implements support for python plugins in nvim.

###### On MacOS
```shell
pip3 install pynvim
```

###### On FreeBSD
Install PIP: `sudo pkg install py39-pip`

```shell
pip install pynvim
```
