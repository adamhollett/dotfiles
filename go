#!/usr/bin/env bash

# Symlinks

symlink_to_home() {
  FILE=$1
  # Only take action if the input file exists
  if [ -f $FILE ]
  then
    # Symlink the file to the home directory
    echo "Creating symlink for $(basename $FILE)"
    ln -sf $FILE ~/$(basename $FILE)
  fi
}

## shell

symlink_to_home shell/.inputrc

### bash

symlink_to_home shell/bash/.bash_profile
symlink_to_home shell/bash/.bashrc

## git

symlink_to_home git/.gitconfig
symlink_to_home git/.gitignore_global

## ruby

symlink_to_home ruby/.rubocop.yml
