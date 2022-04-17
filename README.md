Setup
---

1. Install zsh and set it as the default shell

```
chsh -s $(which zsh)
```

2. Install neovim, vim-plug and ripgrep (optional)

```
sudo apt install neovim ripgrep

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Synchronize with the dotfiles repository

```
git clone --bare --recursive https://github.com/yarkhinephyo/dotfiles.git $HOME/dotfiles
git --git-dir=$HOME/dotfiles --work-tree=$HOME checkout
```

4. Restart the shell
