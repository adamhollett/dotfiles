#!/usr/bin/env sh

set -eou pipefail

setup () {
  SELF_PATH="$( cd "$( dirname "$0" )" && pwd )"

  for file in $(find "$SELF_PATH" -name \*.sym\*); do
    source_file=$(basename "$file")
    destination_file=$(echo "$HOME/$source_file" | sed "s/\.sym//g")

    if [ -e "$destination_file" ]; then
      printf " %s: %s\n" "linked" "$destination_file"
    else
      printf "\e[32m%s: \e[m%s\n" "linking" "$destination_file"
      ln -sf "$file" "$destination_file"
    fi
  done
}

setup
