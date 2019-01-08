#!/usr/bin/env zsh

# Get git info for the current directory to be shown in the prompt
git_info () {
  local branch=''
  local gitstatus=''

  # Determine if we're in a git repo
  local branchCheck=$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/")
  if [[ ! $branchCheck == '' ]]; then

    # Determine the state of the branch
    local statusCheck=$(git status --porcelain 2> /dev/null)
    if [[ ! $statusCheck == '' ]]; then
      gitstatus="%F{yellow}○%f"
    else
      gitstatus="%F{green}●%f"
    fi

    # Don't show the branch name if it's "master"
    if [[ $branchCheck == 'master' ]]; then
      branch=''
    else
      branch="%F{green}$branchCheck%f "
    fi

    echo -en "$branch$gitstatus "
  fi
  return
}

# Get the current directory, truncate it, and make it blue
fancy_dir () {
  echo -en "%F{blue}%-60<...<%~%<<%f"
  return
}
