# A few installation notes:


## zsh

* Add the following to your .zshrc:

        source ~/dotfiles/setup-zsh.sh;

* If you're on osx, also add this :

        source ~/dotfiles/osx.sh;

* Make sure to install the zsh-git-prompt repo:
    
        % git submodule update --recursive


## bash

* Add the following to your .zshrc:

    source ~/dotfiles/setup-bash.sh;

* If you're on osx, also add this :

    source ~/dotfiles/osx.sh;

## other notes:

### set zsh as default shell:

    chsh -s /bin/zsh

### set bash as default shell:

    chsh -s /bin/bash