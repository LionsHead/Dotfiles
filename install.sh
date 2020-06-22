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

read -r -p "Backup current dotfiles? [y/n] " response_backup
read -r -p "Use new default settings for mac os? [y/n] " response_defaults
read -r -p "Install brew cask? [y/n] " response_cask
read -r -p "Install fonts? [y/n] " response_font
read -r -p "Install asdf tools? [y/n] " response_asdf_tools
read -r -p "Use default settings for iTerm2? [y/n] " response_iterm
read -r -p "Install vscode extensions? [y/n] " response_vscode

if [[ $response_backup =~ (y|yes|Y) ]]; then
  mkdir -p ~/.old_dotfiles
  find ~/.** -type f -maxdepth 0 -exec cp {}  ~/.old_dotfiles/ \;

  cp ~/.ssh/config ~/.old_dotfiles/
fi

# OS X defaults
if [[ $response_defaults =~ (y|yes|Y) ]]; then
  source osx/defaults.sh

  success 'Mac os configured'
fi

# Setup git config
source git/install.sh
# Install brew
source brew/install.sh
# ASDF version manager
source asdf/install.sh

# iTerm2
if [[ $response_iterm =~ (y|yes|Y) ]]; then
  source iterm2/install.sh
fi

# Other dotfiles
## SSH
ln -fisv "${DOTFILES_PATH}ssh/config" ~/.ssh/config
link "dot_configs/.editorconfig"
## elixir
link "dot_configs/elixir/.iex.exs"
## ruby
link "dot_configs/ruby/.gemrc"
link "dot_configs/ruby/.default-gems"

# Visual Studio Code
if [[ $response_vscode =~ (y|yes|Y) ]]; then
  source vscode/install.sh
fi

# ZSH
source zsh/install.sh

success 'Done.'
