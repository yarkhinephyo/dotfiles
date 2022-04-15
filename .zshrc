#!/usr/bin/env zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

if ! [ -d $HOME/.oh-my-zsh ]
then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &
  wait
  mv .zshrc.pre-oh-my-zsh .zshrc
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="aussiegeek"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Custom folder location
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Zsh plugins
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

# Dotfile Configurations
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
config config --local status.showUntrackedFiles no

alias vim='nvim'
alias vi='vim'
