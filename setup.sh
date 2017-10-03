#!/bin/sh

print_header() {
  header=$1
  echo ''
  echo '›'
  echo "› $header"
  echo '›'
  echo ''
}

# Determine which OS we are in and execute the corresponding script
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
