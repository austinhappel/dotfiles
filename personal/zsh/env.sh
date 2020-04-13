#!/bin/sh
# Basic environment settings and enhancements.

# Bibliography:
# https://wiki.archlinux.org/index.php/Zsh

export EDITOR=vim
export SVN_EDITOR=vim
export CLICOLOR='true'

# easy colors
autoload -U colors && colors

# auto completion
autoload -U compinit
compinit
