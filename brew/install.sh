#!/bin/bash

# apps=(
#     iterm2
#     visual-studio-code
#     google-chrome
#     slack
#     telegram
#     1password
# )

# tap "homebrew/bundle"
# tap "homebrew/cask"
# tap "homebrew/cask-fonts"
# tap "homebrew/core"
# tap "homebrew/services"

# brew "autoconf"
# brew "automake"
# brew "bat"
# brew "coreutils"
# brew "ctags"
# brew "fx"
# brew "readline"
# brew "libtool"
# brew "graphviz"
# brew "imagemagick"
# brew "libxslt"
# brew "libyaml"
# brew "minikube"
# brew "openshift-cli"
# brew "rsync"
# brew "unixodbc"
# brew "wxmac"
# brew "yarn"

# cask "font-fira-code"
# cask "minikube"

# Install brew
if ! [ -x "$(command -v brew)" ]; then
  info "Install brew"

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  brew update

  success 'Brew installed'
fi

# Install brew packages
# if [[ $response_packges =~ (y|yes|Y) ]];then
#   info 'Brew install apps'

#   brew bundle --file="${DOTFILES_PATH}brew/Brewfile"
#   brew --cask install "${apps[@]}"

#   success 'Installed'

#   success 'Fonts installed'
# fi
