#!/bin/bash

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

apps=(
    iterm2
    visual-studio-code
    google-chrome
    slack
    skype
    telegram
    1password
)

# Install brew
if ! [ -x "$(command -v brew)" ]; then
  info "Install brew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update

  brew bundle --file="${DOTFILES_PATH}brew/Brewfile"

  success 'Brew installed'
fi

info 'Brew cask'

# Install Caskroom
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions

brew install brew-cask

brew cask install "${apps[@]}"

# Install fonts
read -r -p "Install fonts? [Y|n] " response
if [[ $response =~ (y|yes|Y) ]];then
  brew cask install font-fira-code

  success 'fonts installed'
fi
