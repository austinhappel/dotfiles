#!/bin/sh
# Basic environment settings and enhancements.

# Bibliography:
# https://wiki.archlinux.org/index.php/Zsh

export EDITOR=vim
export SVN_EDITOR=vim
export CLICOLOR='true'

# easy colors
autoload -U colors && colors

# useful git info when in git repository
source ~/dotfiles/personal/zsh/tools/zsh-git-prompt/zshrc.sh

# prompt
PROMPT='%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}% $(git_super_status) %# '

# auto completion
autoload -U compinit
compinit