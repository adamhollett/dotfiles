#!/usr/bin/env bash

# Get git info for the current directory to be shown in the prompt
git_info () {
  local branch=''
  local status=''

  # Determine if we're in a git repo
  local branchCheck=$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/")
  if [[ ! $branchCheck == '' ]]; then

    # Determine the state of the branch
    local statusCheck=$(git status --porcelain 2> /dev/null)
    if [[ ! $statusCheck == '' ]]; then
      status=$(cecho ○ yellow)
    else
      status=$(cecho ● green)
    fi

    # Don't show the branch name if it's "master"
    if [[ $branchCheck == 'master' ]]; then
      branch=''
    elif [[ $COLUMNS -lt 100 ]]; then
      branch=$(cecho '⌥ ' gray)
    else
      branch=$(cecho "$branchCheck " green)
    fi

    echo -en "$status $branch"
  fi
  return
}

# Get the current directory, truncate it, and make it blue
fancy_dir () {
  local pwd=$(pwd)
  # Compact home directory name to "~"
  pwd=$(echo -e $pwd | sed "s|"$HOME"|~|")
  # Split folders into an array
  pwd=$(echo -e $pwd | tr "/" " ")

  cecho "$pwd" light-blue
  return
}
