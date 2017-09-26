#!/usr/bin/env zsh

source ~/.zprofile

# Add dev source
source /opt/dev/dev.sh

# Add prezto source
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
