#!/bin/sh

source ~/dotfiles/shell/functions.sh

source os/all.sh

# Determine which OS we are in and follow the corresponding script
case $OSTYPE in
  darwin*)
    print_header 'setting up macOS'
    source os/macos.sh
    ;;
  msys*)
    print_header 'setting up Windows'
    source os/windows.sh
    ;;
  *)
    exit
    ;;
esac
