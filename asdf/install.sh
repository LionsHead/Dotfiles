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

plugins=(
  ruby
  erlang
  elixir
  nodejs
  golang
  rust
)

for plugin in "${plugins[@]}"
do
  if ! asdf plugin-list | grep $plugin > /dev/null
  then
      info "Installing ${plugin} asdf plugin"
      asdf plugin-add $plugin
  fi
done

info "Installed plugins"
asdf plugin list

asdf install

