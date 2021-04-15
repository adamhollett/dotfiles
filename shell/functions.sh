#!/bin/false

# Source a file only if it exists.
# Use for files that might not be on all machines (work-specific).
safe_source () {
  if [ -f $1 ]; then source $1; fi
}

# Print a message in color.
# https://bytefreaks.net/gnulinux/bash/cecho-a-function-to-print-using-different-colors-in-bash
cecho () {
  declare message=${1:-""}
  declare   color=${2:-"default"}

  declare -A colors
  colors=(
          [default]="\e[39m"
            [black]="\e[30m"
              [red]="\e[31m"
            [green]="\e[32m"
           [yellow]="\e[33m"
             [blue]="\e[34m"
          [magenta]="\e[35m"
             [cyan]="\e[36m"
             [gray]="\e[37m"
        [light-red]="\e[91m"
      [light-green]="\e[92m"
     [light-yellow]="\e[93m"
       [light-blue]="\e[94m"
    [light-magenta]="\e[95m"
       [light-cyan]="\e[96m"
       [light-gray]="\e[97m"
  )

  color=${colors[$color]}

  echo -e "\x01${color}\x02${message}\x01\e[m\x02"
}

# Print text as a header
print_header () {
  declare header=${1:-""}

  echo
  echo "┃"
  echo "┃ $header"
  echo "┃"
  echo

  sleep .33
}

# Given a file path, symlink the file to the home directory
symlink_to_home () {
  declare file=$1

  # Only take action if the input file exists
  if [[ -f $file ]]; then
    # Symlink the file to the home directory
    echo "Linking $(basename "$file")"
    ln -sf "$file" "$HOME/$(basename "$file")"
  fi
}

# Show colorful chevrons according to what month it is.
seasonal_chevrons () {
  local date=$(date)
  local chevrons="❯❯❯"

  case $date in
    # spring
    *Mar*|*Apr*|*May*)
      chevrons="$(cecho ❯ cyan)$(cecho ❯ green)$(cecho ❯ yellow)"
      ;;
    # summer
    *Jun*|*Jul*|*Aug*)
      chevrons="$(cecho ❯ green)$(cecho ❯ yellow)$(cecho ❯ light-red)"
      ;;
    # fall
    *Sep*|*Oct*|*Nov*)
      chevrons="$(cecho ❯ light-yellow)$(cecho ❯ light-red)$(cecho ❯ light-magenta)"
      ;;
    # winter
    *Dec*|*Jan*|*Feb*)
      chevrons="$(cecho ❯ light-magenta)$(cecho ❯ cyan)$(cecho ❯ light-green)"
      ;;
    *)
      ;;
  esac

  echo -en $chevrons
}
