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

# Create configs & dotfiles symlinks
source symlinks.sh

# read -r -p "Backup current dotfiles? [Y/n] " response_backup
# # read -r -p "Use new default settings for mac os? [y/N] " response_defaults
# read -r -p "Install brew packages? [y/N] " response_packges
# read -r -p "Install asdf tools? [Y/n] " response_asdf_tools
# read -r -p "Use default settings for iTerm2? [y/n] " response_iterm
# read -r -p "Install vscode extensions? [y/N] " response_vscode

# if [[ $response_backup =~ (y|yes|Y) ]]; then
#   mkdir -p ~/.old_dotfiles
#   find ~/.** -type f -maxdepth 0 -exec cp {}  ~/.old_dotfiles/ \;

#   cp ~/.ssh/config ~/.old_dotfiles/
# fi

# # # OS X defaults
# if [[ $response_defaults =~ (y|yes|Y) ]]; then
#   source osx/defaults.sh

#   success 'Mac os configured'
# fi

# # Setup git config
source git/install.sh
# # Install brew
source brew/install.sh
# ASDF version manager
source asdf/install.sh

# iTerm2
if [[ $response_iterm =~ (y|yes|Y) ]]; then
  source iterm2/install.sh
fi

# ZSH
source zsh/install.sh

success 'Done.'
