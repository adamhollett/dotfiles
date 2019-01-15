#!/usr/bin/env zsh

# Get the current git branch
git_branch () {
  local gitBranch=$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/")
  if [[ ! $gitBranch == '' ]]; then
    if [[ $gitBranch == 'master' ]]; then
      return $gitBranch
    fi
    echo -en "%F{white}⌥%f %F{green}$gitBranch%f"
    return $gitBranch
  fi
  return false
}

git_status () {
  local gitBranch=$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/")
  if [[ ! $gitBranch == '' ]]; then
    local statusCheck=$(git status --porcelain 2> /dev/null)
    if [[ ! $statusCheck == '' ]]; then
      echo -en "%F{yellow}○%f "
    else
      echo -en "%F{green}●%f "
    fi
  fi
}

# Get the current directory, truncate it, and make it blue
fancy_dir () {
  echo -en "%F{blue}%-60<...<%~%<<%f"
  return
}
