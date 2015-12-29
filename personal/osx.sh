#!/bin/sh
# OSX-specific environment settings and customizations

# set 64 bit architecture
export ARCHFLAGS="-arch x86_64"

# java_home var. Backticks are required.
export JAVA_HOME=`/usr/libexec/java_home`

# Enables autocomplete/shims for homebrew-installed pyenv.
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then 
	eval "$(pyenv virtualenv-init -)";
fi
