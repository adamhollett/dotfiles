#!/usr/bin/env zsh

setopt prompt_subst

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

fancy_dir () {
  echo -en "%F{blue}%-60<...<%~%<<%f"
  return
}

CHEVRONS='%F{red}❯%F{magenta}❯%F{blue}❯%f'

export PS1='$(fancy_dir) $(git_info)$CHEVRONS '
