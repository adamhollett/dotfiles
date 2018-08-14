# Only show the last two directories of the current path
PROMPT_DIRTRIM=2

# Print the current git branch in the prompt, if we're in a git repository
function git_branch {
  local branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [[ ! $branch == "" ]]; then
    if [[ $branch == "master" ]]; then
      echo -e "\e[32mm\e[m "
    else
      echo -e "\e[32m$branch\e[m "
    fi
  fi
}

# A shortened path to the current directory
CURRENT_PATH="\[\e[94m\]\w\[\e[m\]"

# Some colourful chevrons
CHEVRONS="\[\e[31m\]❯\[\e[35m\]❯\[\e[34m\]❯\[\e[m\]"

export PS1="$CURRENT_PATH \`git_branch\`$CHEVRONS "
