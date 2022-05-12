#!/usr/bin/env zsh

# Install oh-my-zsh if not found
if ! [ -d $HOME/.oh-my-zsh ]
then
  "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash)"
  mv .zshrc.pre-oh-my-zsh .zshrc
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="aussiegeek"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Fix autosuggestions adding delay to prompt
# https://github.com/zsh-users/zsh-autosuggestions/issues/544
ZSH_AUTOSUGGEST_MANUAL_REBIND="true"

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
  fancy-ctrl-z
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# User configuration

# Install nvm if not found
if ! [ -d $HOME/.nvm ]
then
  "$(curl -fsSL https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash)"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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

# Dotfile repository configurations
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias update='
  config submodule update --init --recursive && \
  nvim --headless +PlugUpgrade +PlugInstall +PlugUpdate +qa && \
  omz update
'
config config --local status.showUntrackedFiles no


alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias vim='nvim'
alias vi='vim'

