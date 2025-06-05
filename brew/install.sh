#!/bin/bash

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

# Install brew
if ! [ -x "$(command -v brew)" ]; then
  info "Install brew"

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew update

  success 'Brew installed'
fi

source bundle.sh
