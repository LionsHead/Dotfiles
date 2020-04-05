#!/bin/bash

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

link () {
	ln -fisv "${DOTFILES_PATH}$1" ~
}

link "asdf/.asdfrc"
link "asdf/.tool-versions"

git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
cd ~

if ! asdf plugin-list | grep elixir > /dev/null
then
  info "Installing elixir asdf plugin"
  asdf plugin-add elixir
fi

if ! asdf plugin-list | grep erlang > /dev/null
then
    info "Installing erlang asdf plugin"
    asdf plugin-add erlang
fi

if ! asdf plugin-list | grep ruby > /dev/null
then
  info "Installing ruby asdf plugin"
  asdf plugin-add ruby
fi

if ! asdf plugin-list | grep node > /dev/null
then
  info "Installing nodejs asdf plugin"
  asdf plugin-add nodejs
fi

# if ! asdf plugin-list | grep postgres > /dev/null
# then
#   info "Installing postgres asdf plugin"
#   asdf plugin-add postgres
# fi

asdf install

