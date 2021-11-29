#!/bin/false

# Truncate the path to the current directory
PROMPT_DIRTRIM=2

PS1="$(cecho '\w' cyan) $(git_info)$(chevrons) "
export PS1
