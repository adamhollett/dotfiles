#!/usr/bin/env bash
#
# An enhanced, colourful bash prompt featuring git branch and status info.

# A shortened path to the current directory
PROMPT_DIRTRIM=2

export PS1="$(cecho '\w' cyan) \`git_info\`$(seasonal_chevrons) "
