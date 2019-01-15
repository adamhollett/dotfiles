## brew

alias cask='brew cask'

## git

### working copy (status)

alias  gws='git status --short'
alias  gwC='git clean -fd'
alias  gwr='git reset --soft'
alias  gwR='git reset --hard'

### branch

alias   gb='git branch'
alias  gbc='git checkout -b'
alias  gbd='git branch --delete'
alias  gbD='git branch --delete --force'
alias  gco='git checkout'

### fetch

alias   gf='git fetch'
alias  gfa='git fetch --all'
alias  gfc='git clone'
alias  gfm='git pull'

### index

alias   ga='git add'
alias  gaa='git add -A'

### commit

alias  gcm='git commit --message'
alias gcam='git commit --all --message'

### push

alias   gp='git push'
alias  gpc='git push --set-upstream origin `git rev-parse --abbrev-ref HEAD`'

### stash

alias   gs='git stash'
alias  gss='git stash save'
alias  gsl='git stash list'
alias  gsp='git stash pop'


## Node.js

alias   nr='npm run'


## Ruby

alias   be='bundle exec'
alias  ber='bundle exec rake'


## Misc

alias ls='ls -G'


## Fun

alias hack='open http://hackertyper.net'
