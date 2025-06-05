#!/bin/bash

# Bundler for non-Ruby dependencies from Homebrew, Homebrew Cask, Mac App Store and Whalebrew.

# brew bundle --help                                                                                                                                   21:15:26
# Usage: brew bundle [subcommand]

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

# Install brew packages
if [[ $response_packges =~ (y|yes|Y) ]];then
  brew bundle --file="${DOTFILES_PATH}brew/Brewfile"

  info 'Install apps by Brew'
  brew install --cask iterm2
  brew install --cask visual-studio-code
  brew install --cask google-chrome
  brew install --cask slack
  brew install --cask telegram
  brew install --cask 1password

  success 'Apps installed'
  info 'Install fonts by Brew'

  brew tap homebrew/cask-fonts
  brew install --cask font-fira-code

  success 'Fonts installed'
fi
