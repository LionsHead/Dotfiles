#!/bin/bash

declare -r GITHUB_TAR_URL="https://github.com/LionsHead/Dotfiles/tarball/master"
declare -r DOTFILES_PATH="$HOME/.dotfiles"

mkdir -p $DOTFILES_PATH

if command -v "curl" &> /dev/null; then
    curl -LsS $GITHUB_TAR_URL | tar xvzf - -C $DOTFILES_PATH --strip 1
elif command -v "wget" &> /dev/null; then
    wget -qO- $GITHUB_TAR_URL | tar xvzf - -C $DOTFILES_PATH --strip 1
fi

cd $DOTFILES_PATH
sh ./install.sh
