git_info () {
  local branch=""
  local status=""
  
  # Determine if we're in a git repo
  local branchCheck=`git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/"`
  if [[ ! $branchCheck == "" ]]; then
    
    # Determine the state of the branch
    local statusCheck=`git status --porcelain 2> /dev/null`
    if [[ ! $statusCheck == "" ]]; then
      status="\e[93m○\e[m"
    else
      status="\e[92m●\e[m"
    fi
    
    # Don't show the branch name if it's "master"
    if [[ $branchCheck == "master" ]]; then
      branch=""
    else
      branch="\e[32m$branchCheck\e[m "
    fi

    printf "$branch$status "
  fi
  return
}


# A shortened path to the current directory
PROMPT_DIRTRIM=2
CURRENT_PATH="\[\e[94m\]\w\[\e[m\]"

# Some colourful chevrons
CHEVRONS="\[\e[91m\]❯\[\e[95m\]❯\[\e[94m\]❯\[\e[m\]"

export PS1="$CURRENT_PATH \`git_info\`$CHEVRONS "
