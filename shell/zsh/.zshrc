#!/usr/bin/env zsh

source ~/.zprofile

# Add dev source if it exists
if [[ -s '/opt/dev/dev.sh' ]]; then
  source '/opt/dev/dev.sh'
fi

# Add prezto source
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
