#!/bin/bash

export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# work
source ~/dotfiles/work/env.sh
source ~/dotfiles/work/aliases.sh


# home
source ~/dotfiles/personal/env.sh
source ~/dotfiles/personal/aliases.sh
source ~/dotfiles/personal/bash/env.sh
source ~/dotfiles/personal/bash/aliases.sh

