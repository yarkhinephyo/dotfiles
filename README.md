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
git clone --bare --recursive https://github.com/yarkhinephyo/dotfiles.git $HOME/dotfiles
```


5. Checkout the configuration

```
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
config checkout
```

6. Restart the shell
