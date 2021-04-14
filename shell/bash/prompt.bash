#!/usr/bin/env bash
#
# An enhanced, colourful bash prompt featuring git branch and status info.

# A shortened path to the current directory
PROMPT_DIRTRIM=2
CURRENT_PATH=$(cecho '\w' light-blue)

# Some colourful chevrons
CHEVRONS='$(cecho ❯ light-blue)$(cecho ❯ light-green)$(cecho ❯ light-yellow)'

export PS1="$CURRENT_PATH \`git_info\`$CHEVRONS "
