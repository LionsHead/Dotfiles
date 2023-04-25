#!/bin/bash

declare -r DOTFILES_PATH="${PWD}/"

link () {
	ln -fisv "${DOTFILES_PATH}$1" ~
}

# link ".inputrc"
link ".editorconfig"

# git
# see git/install.sh

# asdf
link "asdf/.asdfrc"
link "asdf/.tool-versions"

# elixir
link "elixir/.iex.exs"
# ruby
link "ruby/.gemrc"
link "ruby/.default-gems"
