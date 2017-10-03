#!/usr/bin/env bash

# .bash_profile is the user-specific initialization file for bash, and is read
# by both login and interactive shells, unlike .bashrc.

source ~/dotfiles/shell/path.sh
source ~/dotfiles/shell/options.sh
source ~/dotfiles/shell/aliases.sh

source ~/dotfiles/shell/bash/prompt.sh

# Add dev source if it exists
if [[ -s '/opt/dev/dev.sh' ]]; then
  source '/opt/dev/dev.sh'
fi
