#!/bin/zsh

# set dotfiles folder environment var
export DOTFILES_DIR="$(dirname ${0})"

# home
source ~/dotfiles/personal/env.sh
source ~/dotfiles/personal/aliases.sh
source ~/dotfiles/personal/zsh/env.sh
source ~/dotfiles/personal/zsh/aliases.sh

# work
source ~/dotfiles/work/env.sh
source ~/dotfiles/work/aliases.sh