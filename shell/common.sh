#!/bin/false
# shellcheck shell=bash

source   ~/dotfiles/shell/functions.sh
source   ~/dotfiles/shell/aliases.sh
source   ~/dotfiles/shell/nvm.sh
sourceif ~/dotfiles/shell/shopify.sh
sourceif /usr/local/share/chruby/chruby.sh
sourceif /usr/local/share/chruby/auto.sh

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)
