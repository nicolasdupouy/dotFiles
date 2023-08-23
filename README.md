# dotFiles
Clone the repository:
```shell
git clone git@github.com:nicolasdupouy/dotFiles.git
```

## Tmux
```shell
ln -s $PWD/Common/Tmux/.tmux.conf ~/.tmux.conf
```

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
ln -s $PWD/Common/Neovim/lua/ ~/.config/nvim/lua
ln -sf $PWD/Common/Neovim/init.lua ~/.config/nvim/init.lua
```

As I use [lazy.nvim](https://github.com/folke/lazy.nvim), it will downloaded and install the plugins the first time you launch `nvim`.
