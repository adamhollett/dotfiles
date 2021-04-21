#!/bin/false
#
# An enhanced, colourful bash prompt featuring git branch and status info.

# A shortened path to the current directory
PROMPT_DIRTRIM=2

chevrons () {
  echo "$(cecho ❯ light-blue)$(cecho ❯ light-green)$(cecho ❯ light-yellow)"
}

export PS1="$(cecho '\w' cyan) \`git_info\`$(chevrons) "
