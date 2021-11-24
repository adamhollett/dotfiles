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
