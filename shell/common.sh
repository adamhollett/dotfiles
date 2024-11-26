#!/bin/false
# shellcheck shell=bash

source   ~/dotfiles/shell/functions.sh
source   ~/dotfiles/shell/aliases.sh
sourceif ~/dotfiles/shell/shopify.sh
sourceif ~/.asdf/asdf.sh

## homebrew

[[ -x /opt/homebrew/bin/brew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
