#!/bin/bash

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

## Sync iterm2 settings

# Skip daily tips
defaults write com.googlecode.iterm2 NoSyncTipsDisabled -bool true

# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.dotfiles/iterm2"

# Use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

# add light terminal
# open ~/.dotfiles/iterm2/Alabaster.itermcolors

success 'iTerm2 configured'
