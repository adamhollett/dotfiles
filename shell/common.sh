#!/bin/false
# shellcheck shell=bash

source   ~/dotfiles/shell/functions.sh
source   ~/dotfiles/shell/aliases.sh
sourceif ~/dotfiles/shell/shopify.sh
sourceif /usr/local/opt/asdf/libexec/asdf.sh
sourceif /usr/local/share/chruby/chruby.sh
sourceif /usr/local/share/chruby/auto.sh

## homebrew

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

## nvm

if [[ $(which nvm) ]]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi
