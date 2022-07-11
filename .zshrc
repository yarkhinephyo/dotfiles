#!/usr/bin/env zsh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Install oh-my-zsh if not found
if ! [ -d $ZSH ]
then
  "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash)"
  mv .zshrc.pre-oh-my-zsh .zshrc
fi

# (autocomplete plugin) Fix autosuggestions adding delay to prompt
# https://github.com/zsh-users/zsh-autosuggestions/issues/544
ZSH_AUTOSUGGEST_MANUAL_REBIND="true"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="aussiegeek"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Custom folder location
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Zsh plugins
plugins=(
  git
  fancy-ctrl-z
  zsh-autosuggestions
  copybuffer
)

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $ZSH_CUSTOM/nvm-setup.zsh
source $ZSH/oh-my-zsh.sh


# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Set `gdircolors` on MacOS
if [[ "$(uname)" == "Darwin" ]]
then
  if ! type gdircolors > /dev/null;
  then
    brew install coreutils
  fi
  eval $(gdircolors ~/.dircolors)
  alias ls='gls --color=auto'
  alias ll='ls -al'
else
  eval `dircolors ~/.dircolors`
fi

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
  omz update
"

alias cl='clear'
alias tree='tree -L 2'
alias vi='vim'
alias vim="$VIM_PATH"
alias ta='tmux attach -t'
alias tn='tmux new-session -s'
alias tl='tmux list-sessions'

