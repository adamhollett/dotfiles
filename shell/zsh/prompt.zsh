#!/usr/bin/env zsh

setopt prompt_subst

CHEVRONS='%F{063}❯%F{075}❯%F{087}❯%f'

export PS1='$(fancy_dir) $(git_dot)$CHEVRONS '
export RPROMPT='$(git_branch)'
