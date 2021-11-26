#!/bin/false

setopt prompt_subst

export PS1='$(truncated_path) $(chevrons) '
export RPROMPT='$(git_info)'
