#!/bin/false

setopt prompt_subst

export PS1='$(fancy_dir) $(git_dot)$(seasonal_chevrons) '
export RPROMPT='$(git_branch)'
