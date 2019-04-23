# A few installation notes:


## zsh

* Add the following to your .zshrc:

        source ~/dotfiles/setup-zsh.sh;

* If you're on osx, also add this :

        source ~/dotfiles/personal/osx.sh;


## bash

* Add the following to your .bashrc:

    source ~/dotfiles/setup-bash.sh;

* If you're on osx, also add this :

    source ~/dotfiles/personal/osx.sh;

## both

* soft-link some files to the home directory

        ln -s ~/dotfiles/.npmrc ~/.npmrc
        ln -s ~/dotfiles/.slate ~/.slate
        ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
        ln -s ~/dotfiles/.vimrc ~/.vimrc

* Install some dependencies:

        % git submodule init
        % git submodule update --recursive

## Other bootstrap things to do:

Install [rvm](rvm.io)

	\curl -sSL https://get.rvm.io | bash

	// Install RVM stable with ruby:

	\curl -sSL https://get.rvm.io | bash -s stable --ruby


## other notes:

### set zsh as default shell:

    chsh -s /bin/zsh

### set bash as default shell:

    chsh -s /bin/bash
