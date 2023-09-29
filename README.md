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

## System clipboard

- Vim
  - Local MacOS: Integrated.
  - Local WSL: Integrated.
  - Local Linux Desktop: Only Vim buffers.
  - Remote Linux Server: Only Vim buffers.

- Tmux
  - Local MacOS: Integrated. Use \<Space\> and \<Enter\> for Tmux buffer.
  - Local WSL: Integrated. Use \<Space\> and \<Enter\> for Tmux buffer.
  - Local Linux Desktop: Only Tmux buffer.
  - Remote Linux Server: Only Tmux buffer.

