Dotfiles
---

## Environments

Tested on MacOS 10.15, Ubuntu 20.04, Ubuntu 20.04 (wsl)

## Setup

1. Install zsh and set it as the default shell

```bash
chsh -s $(which zsh)
```

2. Install neovim

```bash
# For Linux and Mac Intel
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

# For Mac M1
brew install neovim
```

3. Install vim-plug

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

4. Clone the dotfiles repository

```bash
git clone --bare --recursive https://github.com/yarkhinephyo/dotfiles.git $HOME/dotfiles
git --git-dir=$HOME/dotfiles --work-tree=$HOME checkout
```

5. Update VIM_PATH in `.zshrc`

6. Update the plugins and submodules

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

