#!/usr/bin/env zsh

# (autocomplete plugin) Fix autosuggestions adding delay to prompt
# https://github.com/zsh-users/zsh-autosuggestions/issues/544
ZSH_AUTOSUGGEST_MANUAL_REBIND="true"

# Zsh history to help with auto-complete
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# Zsh highlight completion with tab
zstyle ':completion:*' menu select

# Helper to handle system clipboard
source $HOME/.zsh/clipboard.zsh
# Helper to handle colors
source $HOME/.zsh/themes/theme-and-appearance.zsh

# Customizations
source $HOME/.zsh/themes/aussiegeek.zsh
source $HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/fancy-ctrl-z.zsh
source $HOME/.zsh/copybuffer.zsh
source $HOME/.zsh/nvm-setup.zsh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Vim installation directory
export VIM_PATH="$HOME/nvim.appimage"

# Dotfile repository configurations
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
# Don't show untracked files during 'config status'
config config --local status.showUntrackedFiles no
# Update git-submodules, vim, oh-my-zsh
alias update="
  config submodule update --init --recursive && \
  $VIM_PATH --headless +PlugUpgrade +PlugInstall +PlugUpdate +qa && \
"

alias cl='clear'
alias tree='tree -L 2'
alias vi='vim'
alias vim="$VIM_PATH"
alias ta='tmux attach -t'
alias tn='tmux new-session -s'
alias tl='tmux list-sessions'

