Dotfiles
---

## Environments

Tested on MacOS 10.15, Ubuntu 20.04, Ubuntu 20.04 (wsl)

## Setupj

1. Install zsh and set it as the default shell

```bash
chsh -s $(which zsh)
```

2. Install neovim, vim-plug

```bash
sudo apt install neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Clone the dotfiles repository

```bash
git clone --bare --recursive https://github.com/yarkhinephyo/dotfiles.git $HOME/dotfiles
git --git-dir=$HOME/dotfiles --work-tree=$HOME checkout
```

4. Update the plugins and submodules

```bash
source $HOME/.zshrc
update
```

## Optional

1. Install ripgrep for telescope

```bash
sudo apt install ripgrep
```

2. NodeJS for LSP features

```bash
nvm install <node-version>
```

3. Install xclip for vim-tmux yank (Ubuntu non-wsl only)

```bash
sudo apt install xclip
```
