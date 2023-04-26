#!/bin/bash

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

info "Installing ssh keys"

# load ssh keys by keychain
# ssh-add --apple-load-keychain  ~/.ssh/id_rsa
ssh-add --apple-use-keychain ~/.ssh/id_rsa

# ssh
ln -fisv "${DOTFILES_PATH}ssh/config" ~/.ssh/config

# fix Load key "~/.ssh/id_rsa": bad permissions
chmod 400 ~/.ssh/Key file
