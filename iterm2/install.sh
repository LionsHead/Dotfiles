#!/bin/bash

defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "${DOTFILES_PATH}iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

success 'iTerm2 configured'
