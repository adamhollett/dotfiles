#!/usr/bin/env bash

set -o errexit
set -o pipefail

readonly DIR="$(dirname "$0")"

source "${DIR}/shell/functions.sh"
source "${DIR}/os/all.sh"

# Determine which OS we are in and follow the corresponding script
case $OSTYPE in
  darwin*) source "${DIR}/os/macos.sh";;
  msys*)   source "${DIR}/os/windows.sh";;
  *)       exit;;
esac
