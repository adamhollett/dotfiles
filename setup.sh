#!/usr/bin/env bash

set -eou pipefail

link_file () {
  local source_file="$1"
  local destination_file="$2"

  if [ -e "$destination_file" ]; then
    printf " %s: %s\n" "linked" "$destination_file"
  else
    printf "\e[32m%s: \e[m%s\n" "linking" "$destination_file"
    ln -sf "$source_file" "$destination_file"
  fi
}

setup () {
  SELF_PATH="$( cd "$( dirname "$0" )" && pwd )"

  link_file "$SELF_PATH/shell/zsh/.zshrc" "$HOME/.zshrc"
  link_file "$SELF_PATH/shell/zsh/.zprofile" "$HOME/.zprofile"
  link_file "$SELF_PATH/shell/bash/.bashrc" "$HOME/.bashrc"
  link_file "$SELF_PATH/shell/bash/.bash_profile" "$HOME/.bash_profile"
  link_file "$SELF_PATH/shell/.inputrc" "$HOME/.inputrc"
  link_file "$SELF_PATH/shell/.hushlogin" "$HOME/.hushlogin"

  link_file "$SELF_PATH/git/.gitconfig" "$HOME/.gitconfig"
  link_file "$SELF_PATH/git/.gitignore_global" "$HOME/.gitignore_global"

  link_file "$SELF_PATH/Brewfile" "$HOME/Brewfile"
  link_file "$SELF_PATH/ruby/.ruby-version" "$HOME/.ruby-version"
  link_file "$SELF_PATH/ruby/.rubocop.yml" "$HOME/.rubocop.yml"
  link_file "$SELF_PATH/node/.node-version" "$HOME/.node-version"
  link_file "$SELF_PATH/shell/.asdfrc" "$HOME/.asdfrc"
  link_file "$SELF_PATH/shell/.shellcheckrc" "$HOME/.shellcheckrc"
  link_file "$SELF_PATH/editor/.editorconfig" "$HOME/.editorconfig"

  # Claude
  mkdir -p "$HOME/.claude"
  link_file "$SELF_PATH/ai/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
}

setup
