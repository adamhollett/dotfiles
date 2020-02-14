#!/usr/bin/env zsh

# Show colorful chevrons according to what month it is.
seasonal_chevrons () {
  local date=$(date)
  local chevrons="❯❯❯"

  case $date in
    # spring
    *Mar*|*Apr*|*May*)
      chevrons="%F{#81D4FA}❯%F{#A5D6A7}❯%F{#FFF59D}❯%f"
      ;;
    # summer
    *Jun*|*Jul*|*Aug*)
      chevrons="%F{#A5D6A7}❯%F{#FFF59D}❯%F{#FFAB91}❯%f"
      ;;
    # fall
    *Sep*|*Oct*|*Nov*)
      chevrons="%F{#E6EE9C}❯%F{#FFCC80}❯%F{#F48FB1}❯%f"
      ;;
    # winter
    *Dec*|*Jan*|*Feb*)
      chevrons="%F{#B39DDB}❯%F{#81D4FA}❯%F{#A5D6A7}❯%f"
      ;;
    *)
      ;;
  esac

  echo -en $chevrons
}

# Return the branch name if we're in a git repo, or nothing otherwise.
git_check () {
  local gitBranch=$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/")
  if [[ $gitBranch ]]; then
    echo -en $gitBranch
    return
  fi
}

# Return a color indicating the status of the current git repo.
git_status () {
  local gitBranch="$(git_check)"
  if [[ $gitBranch ]]; then
    local statusCheck=$(git status 2> /dev/null)
    if [[ $statusCheck =~ 'Your branch is ahead' ]]; then
      echo -en 'ahead'
    elif [[ $statusCheck =~ 'Changes to be committed' ]]; then
      echo -en 'staged'
    elif [[ $statusCheck =~ 'no changes added' ]]; then
      echo -en 'modified'
    elif [[ $statusCheck =~ 'working tree clean' ]]; then
      echo -en 'clean'
    fi
  fi
}

# Return a color based on the current git status.
git_status_color () {
  local gitStatus="$(git_status)"
  local statusText=''
  case $gitStatus in
    clean*)
      statusText='green'
      ;;
    modified*)
      statusText=214
      ;;
    staged*)
      statusText=226
      ;;
    ahead*)
      statusText=159
      ;;
    *)
      statusText='white'
      ;;
  esac
  echo -en $statusText
}

# Print a label for the current git branch if it isn't master.
git_branch () {
  local gitBranch="$(git_check)"
  if [[ $gitBranch && ! $gitBranch == 'master' && $COLUMNS -gt 100 ]]; then
    echo -en "%F{240}⌥%f %F{"$(git_status_color)"}$gitBranch%f"
  fi
}

# Print a dot indicating the current git status.
git_dot () {
  local gitCheck="$(git_check)"
  if [[ $gitCheck ]]; then
    local gitStatus="$(git_status)"
    local gitStatusDot='●'
    if [[ $gitStatus == 'staged' ]]; then
      local gitStatusDot='◍'
    elif [[ $gitStatus == 'modified' ]]; then
      local gitStatusDot='○'
    fi
    if [[ $gitCheck && ! $gitCheck == 'master' && $COLUMNS -lt 100 ]]; then
      echo -en "%F{240}⌥%f "
    fi
    echo -en "%F{"$(git_status_color)"}$gitStatusDot%f "
  fi
}

# Get the current directory, truncate it, and make it blue
fancy_dir () {
  echo -en "%F{blue}%-66<…<%~%<<%f"
  return
}
