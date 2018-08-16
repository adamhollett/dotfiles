#!/bin/sh

## Symlinks

print_header 'create symlinks'

### git

symlink_to_home ~/dotfiles/git/.gitconfig
symlink_to_home ~/dotfiles/git/.gitignore_global

### shell

symlink_to_home ~/dotfiles/shell/.inputrc

#### bash

symlink_to_home ~/dotfiles/shell/bash/.bash_profile
symlink_to_home ~/dotfiles/shell/bash/.bashrc

### ruby

symlink_to_home ~/dotfiles/ruby/.ruby-version
symlink_to_home ~/dotfiles/ruby/.rubocop.yml

### editors

symlink_to_home ~/dotfiles/editor/.editorconfig
