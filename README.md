Setup
---

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

5. (Optional) Install ripgrep for telescope, NodeJS for LSP features.

```bash
sudo apt install ripgrep

nvm install <node-version>
```

