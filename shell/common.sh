#!/bin/false
# shellcheck shell=bash

source   ~/dotfiles/shell/functions.sh
source   ~/dotfiles/shell/aliases.sh
sourceif ~/dotfiles/shell/shopify.sh
sourceif /opt/homebrew/opt/asdf/libexec/asdf.sh
sourceif /usr/local/share/chruby/chruby.sh
sourceif /usr/local/share/chruby/auto.sh

## homebrew

[[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
