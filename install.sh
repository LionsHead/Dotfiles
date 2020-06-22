#!/bin/bash

set -e
declare -r DOTFILES_PATH="${PWD}/"

echo ''

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

link () {
	ln -fisv "${DOTFILES_PATH}$1" ~
}

# Check if console tools installed
if ! xcode-select -p>/dev/null; then
  info "Install xcode"
  xcode-select --install
  read -p "Press [Enter] when install finished..."

  success 'xcode console tools installed'
fi

read -r -p "Backup current dotfiles? [y|N] " response
if [[ $response =~ (y|yes|Y) ]];then
  mkdir -p ~/.old_dotfiles
  find ~/.** -type f -maxdepth 0 -exec cp {}  ~/.old_dotfiles/ \;
fi

# OS X defaults
read -r -p "Use default settings for mac os? [Y|n] " response
if [[ $response =~ (y|yes|Y) ]];then
  source osx/defaults.sh

  success 'Mac os configured'
fi

# Setup git config
source git/install.sh

# SSH
ln -fisv "${DOTFILES_PATH}ssh/config" ~/.ssh/config

# Install brew
source brew/install.sh

# iTerm2
read -r -p "Use default settings for iTerm2? [Y|n] " response
if [[ $response =~ (y|yes|Y) ]];then
  defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "${DOTFILES_PATH}iterm2"
  defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

  success 'iTerm2 configured'
fi

# ASDF version manager
source asdf/install.sh

# Other dotfiles
link "dot_configs/.editorconfig"
## elixir
link "dot_configs/elixir/.iex.exs"
## ruby
link "dot_configs/ruby/.gemrc"
link "dot_configs/ruby/.default-gems"

# Visual Studio Code
source vscode/install.sh

# ZSH
source zsh/install.sh

success 'Done.'
