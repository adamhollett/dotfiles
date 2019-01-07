# Print a message in color. Inspired by:
# https://bytefreaks.net/gnulinux/bash/cecho-a-function-to-print-using-different-colors-in-bash
cecho () {
  declare -A colors
  colors=(\
    ['default']='\e[39m'\
    ['black']='\e[30m'\
    ['red']='\e[31m'\
    ['green']='\e[32m'\
    ['yellow']='\e[33m'\
    ['blue']='\e[34m'\
    ['magenta']='\e[35m'\
    ['cyan']='\e[36m'\
    ['gray']='\e[37m'\
    ['light-red']='\e[91m'\
    ['light-green']='\e[92m'\
    ['light-yellow']='\e[93m'\
    ['light-blue']='\e[94m'\
    ['light-magenta']='\e[95m'\
    ['light-cyan']='\e[96m'\
    ['light-gray']='\e[97m'\
  );

  local defaultMessage=''
  local defaultColor='default'

  local message=${1:-$defaultMessage}
  local color=${2:-$defaultColor}
  color=${colors[$color]}

  echo -en "\x01${color}\x02${message}\x01\e[m\x02"
  return
}

# Print text as a header
print_header () {
  local header=$1
  echo ''
  echo '❯'
  echo "❯ $header"
  echo '❯'
  echo ''
  sleep .5
}

# Given a file path, symlink the file to the home directory
symlink_to_home () {
  local file=$1
  # Only take action if the input file exists
  if [[ -f $file ]]
  then
    # Symlink the file to the home directory
    echo "Linking $(basename "$file")"
    ln -sf "$file" ~/$(basename "$file")
  fi
  sleep .05
}
