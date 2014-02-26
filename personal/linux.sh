#!/bin/sh

# sublime text executable shouldbe in /opt/
subl_call() { /opt/Sublime\ Text\ 2/sublime_text "$@" &; }
alias subl=subl_call;

# keyboard repeat speed (first is pause, second is speed)
xset r rate 200 60
