#!/bin/sh
# OSX-specific environment settings and customizations

# set 64 bit architecture
export ARCHFLAGS="-arch x86_64"

# change the color scheme of the current terminal tab
function tabc() {
  NAME=$1; if [ -z "$NAME" ]; then NAME="Default"; fi
  osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"$NAME\""
}

# java_home var. Backticks are required.
export JAVA_HOME=`/usr/libexec/java_home`