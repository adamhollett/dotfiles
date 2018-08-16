#!/bin/sh

source ~/dotfiles/shell/functions.sh

# Determine which OS we are in and follow the corresponding script
case $OSTYPE in
  darwin*)
    print_header 'operating system detected as macOS'
    source os/macos.sh
    ;;
  msys*)
    print_header 'operating system detected as Windows'
    source os/windows.sh
    ;;
  *)
    exit
    ;;
esac
