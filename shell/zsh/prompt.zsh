#!/usr/bin/env zsh

setopt prompt_subst

CHEVRONS='%F{red}❯%F{magenta}❯%F{blue}❯%f'

export PS1='$(fancy_dir) $(git_dot)$CHEVRONS '
export RPROMPT='$(git_branch)'
