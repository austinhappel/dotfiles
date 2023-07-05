# A few installation notes:

## OSX: Install Homebrew first

- Install [Homebrew](https://brew.sh/) using the info from their website.
- Inspect the `Brewfile` to see if it contains everything you want to install. It's found in `~/dotfiles/Brewfile`

Install all brew dependencies with this:

```
cd ~/dotfiles
brew bundle
```

## zsh

- Install [Oh my ZSH!](https://ohmyz.sh/) - this will create a .zshrc file for you.
- Add the following to your .zshrc:

```
source ~/dotfiles/setup-zsh.sh;
```

- If you're on osx, also add this :

```
source ~/dotfiles/personal/osx.sh;
```

## bash

- Add the following to your .bashrc:

```
source ~/dotfiles/setup-bash.sh;
```

- If you're on osx, also add this :
```
source ~/dotfiles/personal/osx.sh;
```

## both

Copy dot files to the home directory

```
cp ~/dotfiles/.npmrc ~/.npmrc
cp ~/dotfiles/init.vim ~/.config/nvim/init.vim
cp ~/dotfiles/.vimrc ~/.vimrc
cp ~/dotfiles/.tmux.conf ~/.tmux.conf

# OSX
cp ~/dotfiles/.slate ~/.slate
cp -r ~/dotfiles/.iterm ~/.iterm
```

## Other bootstrap things to do

#### Install tmux package manager

https://github.com/tmux-plugins/tpm


#### Install [NVM](https://github.com/nvm-sh/nvm)

Follow the notes on their github page (link above)

#### Make cmd-tab switcher display on all screens

```
defaults write com.apple.Dock appswitcher-all-displays -bool true
killall Dock
```

## other notes:

### set zsh as default shell:

```
chsh -s /bin/zsh
```

### set bash as default shell:

```
chsh -s /bin/bash
```
