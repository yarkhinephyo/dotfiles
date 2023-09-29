Dotfiles
---

## Environments

Tested on MacOS 10.15, Ubuntu 20.04, Ubuntu 20.04 (wsl)

## Setup

1. Install zsh and set it as the default shell

```bash
chsh -s $(which zsh)
```

2. Install vim-plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
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

## Only Vim

```
curl -fLo ~/.vimrc \
    https://raw.githubusercontent.com/yarkhinephyo/dotfiles/main/.vimrc && \
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
vim +PlugUpgrade +PlugInstall +PlugUpdate +qa
```
