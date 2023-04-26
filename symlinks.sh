#!/bin/bash

declare -r DOTFILES_PATH="${PWD}/"

link () {
	ln -fisv "${DOTFILES_PATH}$1" ~
}

# local configs
touch ~/.gitconfig_local
touch ~/.zshrc_local

# link ".inputrc"
link ".editorconfig"
link ".aliases"

# git
# see git/install.sh
link "git/.gitconfig"
link "git/.gitignore_global"

# asdf
link "asdf/.asdfrc"
link "asdf/.tool-versions"

# elixir
link "elixir/.iex.exs"
# ruby
link "ruby/.gemrc"
link "ruby/.default-gems"
