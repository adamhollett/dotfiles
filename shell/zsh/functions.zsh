#!/usr/bin/env zsh

# Return the branch name if we're in a git repo, or nothing otherwise.
git_check () {
  local gitBranch=$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/")
  if [[ $gitBranch ]]; then
    echo -en $gitBranch
    return
  else
    return
  fi
}

# Return "green" if there are no git changes, or "yellow" if there are.
git_status () {
  local gitBranch="$(git_check)"
  if [[ $gitBranch ]]; then
    local statusCheck=$(git status --porcelain 2> /dev/null)
    if [[ $statusCheck ]]; then
      echo -en 'yellow'
    else
      echo -en 'green'
    fi
  fi
}

# Format and print the current git branch if it isn't master.
git_branch () {
  local gitBranch="$(git_check)"
  if [[ $gitBranch && ! $gitBranch == 'master' ]]; then
    echo -en "%F{white}⌥%f %F{"$(git_status)"}$gitBranch%f"
  fi
}

# Print a dot indicating the current git status.
git_dot () {
  local gitStatusColor="$(git_status)"
  if [[ $gitStatusColor == 'yellow' ]]; then
    echo -en "%F{yellow}○%f "
  elif [[ $gitStatusColor == 'green' ]]; then
    echo -en "%F{green}●%f "
  fi
}

# Get the current directory, truncate it, and make it blue
fancy_dir () {
  echo -en "%F{blue}%-60<...<%~%<<%f"
  return
}
