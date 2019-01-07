#!/usr/bin/env zsh

# .zprofile is the user-specific initialization file for zsh, and is read
# by both login and interactive shells, unlike .zshrc.

source ~/dotfiles/shell/functions.sh
source ~/dotfiles/shell/path.sh
source ~/dotfiles/shell/aliases.sh
source ~/dotfiles/shell/zsh/prompt.zsh

autoload -Uz compinit promptinit
compinit
promptinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
