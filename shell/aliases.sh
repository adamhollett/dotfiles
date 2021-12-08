#!/bin/false
# shellcheck shell=bash

## git

### working copy (status)

alias gws='git status'
alias gwC='git clean -fd'
alias gwr='git reset --soft'
alias gwR='git reset --hard'

### branch

alias  gb='git branch'
alias gbc='git checkout -b'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gco='git checkout'

### fetch

alias  gf='git fetch'
alias gfa='git fetch --all'
alias gfc='git clone'
alias gfm='git pull'

### clean

alias gcfd='git clean -fd'

### index

alias  ga='git add'
alias gaa='git add -A'

### commit

alias  gcm='git commit --message'
alias gcam='git commit --all --message'

### push

alias  gp='git push'
alias gpc='git push --set-upstream origin `git rev-parse --abbrev-ref HEAD`'
alias gpo='git push origin'

### stash

alias  gs='git stash -u'
alias gss='git stash save -u'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gsd='git stash drop'

## Node

alias nr='npm run'

## Ruby

alias be='bundle exec'

## misc

alias ls='ls -G'

## fun

alias hack='open http://hackertyper.net'
