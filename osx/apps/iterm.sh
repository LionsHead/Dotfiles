#!/bin/bash

## sync iterm2 settings

# Skip daily tips
defaults write com.googlecode.iterm2 NoSyncTipsDisabled -bool true

# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.dotfiles/iterm2"

# Use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

# add light terminal
# open ~/.dotfiles/iterm2/Alabaster.itermcolors
