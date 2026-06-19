#!/usr/bin/env bash

source ~/dotfiles/shell/common.sh
source ~/dotfiles/shell/bash/functions/cprint
source ~/dotfiles/shell/bash/functions/chevrons
source ~/dotfiles/shell/bash/functions/git_info

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun completions
sourceif ~/.bun/_bun

## prompt

PROMPT_DIRTRIM=2

export PS1='$(cprint -p "\w" cyan) $(git_info)$(chevrons) '

