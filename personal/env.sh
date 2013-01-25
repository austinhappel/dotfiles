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