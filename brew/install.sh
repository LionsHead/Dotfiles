#!/bin/bash

apps=(
    iterm2
    visual-studio-code
    google-chrome
    slack
    telegram
    1password
)

# Install brew
if ! [ -x "$(command -v brew)" ]; then
  info "Install brew"

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew update

  success 'Brew installed'
fi

# Install apps
read -r -p "Install brew apps? [Y|n] " response
if [[ $response =~ (y|yes|Y) ]];then
  info 'Brew install apps'

  brew bundle --file="${DOTFILES_PATH}brew/Brewfile"
  brew cask install "${apps[@]}"

  success 'Installed'
fi

# Install fonts
read -r -p "Install fonts? [Y|n] " response
if [[ $response =~ (y|yes|Y) ]];then

  brew cask install font-fira-code

  success 'Fonts installed'
fi
