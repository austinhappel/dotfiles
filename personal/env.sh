#!/bin/sh

# Basic environment settings and enhancements.
export EDITOR=vim
export SVN_EDITOR=vim
export CLICOLOR='true'

# add personal/bin to path
# add ~/local/bin to path
export PATH=${DOTFILES_DIR}/personal/bin:~/local/bin:$PATH;

# node JS configuration
export npm_config_prefix=~/local

# node version manager
. ${DOTFILES_DIR}/personal/tools/nvm/nvm.sh

# python: virtualenv wrapper
# requires that virtualenvwrapper is installed globally
# (sudo pip install virtualenvwrapper)
source /usr/local/bin/virtualenvwrapper.sh

# ruby: rvm
source ~/.rvm/scripts/rvm