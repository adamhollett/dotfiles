# Only show the last two directories of the current path
PROMPT_DIRTRIM=2

# Print the current git branch in the prompt, if we're in a git repository
function git_branch() {
  BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [ ! "${BRANCH}" == "" ]; then echo "${BRANCH} "; fi
}

# A shortened path to the current directory
CURRENT_PATH="\[\e[94m\]\w\[\e[m\]"

# Some colourful chevrons
CHEVRONS="\[\e[31m\]❯\[\e[35m\]❯\[\e[34m\]❯\[\e[m\]"

export PS1="$CURRENT_PATH \[\e[32m\]\`git_branch\`\[\e[m\]$CHEVRONS "
