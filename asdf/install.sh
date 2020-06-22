#!/bin/bash

plugins=(
  ruby
  erlang
  elixir
  nodejs
  golang
  rust
)

link "asdf/.asdfrc"
link "asdf/.tool-versions"

brew install asdf

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

if [[ $response_asdf_tools =~ (y|yes|Y) ]];then
  info "Install languages"
  asdf install
fi

