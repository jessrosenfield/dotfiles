#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Add git completion
source git-completion.zsh

# Add aliases
if [[ -s "${ZDOTDIR:-$HOME}/.bash_aliases" ]]; then
  source "${ZDOTDIR:-$HOME}/.bash_aliases"
fi

# Add cuda to PATH
if [[ -s /usr/local/cuda/bin ]]; then
  export PATH=$PATH:/usr/local/cuda/bin
fi

