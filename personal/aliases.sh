#!/bin/sh

alias l='ls -1'
alias ll='ls -la'
alias lll='ls -alh'

alias gitup='~/dotfiles/personal/bin/git-update-branch.sh';

# assuming you have mysql5 server installed:
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'

# assuming you have xcode installed: (works on 10.7.5)
alias simulator='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'

alias svnrmall='svn rm $( svn status | sed -e "/^!/!d" -e "s/^!//" )'