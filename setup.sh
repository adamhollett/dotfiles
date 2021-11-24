#!/usr/bin/env bash

set -eou pipefail

setup () {
  SELF_PATH="$( cd "$( dirname "$0" )" && pwd )"

  for file in $(find "$SELF_PATH" -name \*.sym\*); do
    source_file=$(basename "$file")
    destination_file=$(echo "$HOME/$source_file" | sed "s/\.sym//g")

    if [ -e "$destination_file" ]; then
      echo " linked: $destination_file"
    else
      echo -e "\x01\e[32m\x02linking:\x01\e[m\x02 $destination_file"
      ln -sf "$file" "$destination_file"
    fi
  done
}

setup
