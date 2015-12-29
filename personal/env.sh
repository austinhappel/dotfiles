#!/bin/sh

# Basic environment settings and enhancements.
export EDITOR=vim
export SVN_EDITOR=vim
export CLICOLOR='true'

# add personal/bin to path
# add ~/local/bin to path
export PATH=${DOTFILES_DIR}/personal/bin:~/local/bin:/opt/local/bin:$PATH;

# node JS configuration
export npm_config_prefix=~/local

# python: virtualenv wrapper
# requires that virtualenvwrapper is installed globally
# (sudo pip install virtualenvwrapper)
# source /usr/local/bin/virtualenvwrapper.sh

# todo
source ${DOTFILES_DIR}/personal/tools/todo/todo_completion
export TODOTXT_CFG_FILE="${DOTFILES_DIR}/personal/tools/todo/todo.cfg"
alias todo="${DOTFILES_DIR}/personal/tools/todo/todo.sh"
alias t='todo'

# ruby: rvm
source ~/.rvm/scripts/rvm
