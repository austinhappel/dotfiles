# A few installation notes:


## zsh

* Add the following to your .zshenv:

        source ~/dotfiles/setup-zsh.sh;

* If you're on osx, also add this :

        source ~/dotfiles/personal/osx.sh;


## bash

* Add the following to your .bashrc:

    source ~/dotfiles/setup-bash.sh;

* If you're on osx, also add this :

    source ~/dotfiles/personal/osx.sh;

## both

* soft-link or copy over the `.npmrc` to your home directory

        ln -s ~/dotfiles/.npmrc ~/.npmrc

* Install some dependencies:

        % git submodule init 
        % git submodule update --recursive

## Other bootstrap things to do:

Install [rvm](rvm.io)

	\curl -sSL https://get.rvm.io | bash

	// Install RVM stable with ruby:
	
	\curl -sSL https://get.rvm.io | bash -s stable --ruby


Using (NVM)[https://github.com/creationix/nvm] which is installed by default, install the latest stable version of nodejs.

1. Go to [nodejs.org](http://nodejs.org) and find the latest stable version of node.
2. Install it using nvm:

		nvm install 0.10.23

3. Set it as the default:

		nvm alias default 0.10.23


## other notes:

### set zsh as default shell:

    chsh -s /bin/zsh

### set bash as default shell:

    chsh -s /bin/bash