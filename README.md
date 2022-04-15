Setup
---

1. Install git

2. Install zsh and set it as the default shell

```
chsh -s $(which zsh)
```

3. Install neovim and vim-plug

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

4. Clone the dotfiles repository

```
git clone --bare https://github.com/yarkhinephyo/dotfiles.git $HOME/dotfiles
```

5. Restart shell and checkout the configuration

```
checkout config
```

