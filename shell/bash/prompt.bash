git_info () {
  local branch=""
  local status=""

  # Determine if we're in a git repo
  local branchCheck=`git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/"`
  if [[ ! $branchCheck == "" ]]; then

    # Determine the state of the branch
    local statusCheck=`git status --porcelain 2> /dev/null`
    if [[ ! $statusCheck == "" ]]; then
      status=`cecho "○" "yellow"`
    else
      status=`cecho "●" "green"`
    fi

    # Don't show the branch name if it's "master"
    if [[ $branchCheck == "master" ]]; then
      branch=""
    else
      branch=`cecho "$branchCheck " "green"`
    fi

    echo -en "$branch$status "
  fi
  return
}

# A shortened path to the current directory
PROMPT_DIRTRIM=2
CURRENT_PATH="\[\e[94m\]\w\[\e[m\]"

# Some colourful chevrons
CHEVRONS="`cecho "❯" "light-red"``cecho "❯" "light-magenta"``cecho "❯" "light-blue"`"

export PS1="$CURRENT_PATH \`git_info\`$CHEVRONS "
