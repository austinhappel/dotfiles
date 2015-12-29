#!/bin/sh
# OSX-specific environment settings and customizations

# set 64 bit architecture
export ARCHFLAGS="-arch x86_64"

export NVM_DIR=$(readlink -f "$HOME/.nvm")
