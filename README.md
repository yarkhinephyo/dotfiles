Setup
---

1. Install zsh and set it as the default shell

```
chsh -s $(which zsh)
```

2. Install neovim, vim-plug

```
sudo apt install neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Synchronize with the dotfiles repository

```
git clone --bare --recursive https://github.com/yarkhinephyo/dotfiles.git $HOME/dotfiles
git --git-dir=$HOME/dotfiles --work-tree=$HOME checkout
```

4. Restart the shell

5. (Optional) Install ripgrep for telescope, NodeJS for LSP features.

```
sudo apt install ripgrep

nvm install <node-version>
```

