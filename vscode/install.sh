#!/bin/bash

rm -rf ~/Library/Application\ Support/Code/User
ln -s "${DOTFILES_PATH}vscode/User" "~/Library/Application\ Support/Code/User"

export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

source vscode/extensions.sh
