#!/bin/zsh

# Fixing tmux bug where PATH gets borked
# http://superuser.com/questions/544989/does-tmux-sort-the-path-variable
if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi

# set dotfiles folder environment var
export DOTFILES_DIR="$(dirname ${0})"

# home
source ~/dotfiles/personal/env.sh
source ~/dotfiles/personal/aliases.sh
source ~/dotfiles/personal/zsh/env.sh
source ~/dotfiles/personal/zsh/aliases.sh
