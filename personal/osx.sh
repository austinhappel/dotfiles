#!/bin/sh
# OSX-specific environment settings and customizations

# set 64 bit architecture
export ARCHFLAGS="-arch x86_64"

# java_home var. Backticks are required.
export JAVA_HOME=`/usr/libexec/java_home`

