#!/usr/bin/env zsh

# .zprofile is the user-specific initialization file for zsh, and is read
# by both login and interactive shells, unlike .zshrc.

source ~/dotfiles/shell/common.sh
source ~/dotfiles/shell/zsh/functions.zsh
source ~/dotfiles/shell/zsh/prompt.zsh

autoload -Uz compinit promptinit
compinit -i
promptinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
