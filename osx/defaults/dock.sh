#!/bin/bash

# Sets reasonable macOS defaults.
# https://macos-defaults.com/

### Dock

# Dock: Minimize window effect
defaults write com.apple.dock mineffect -string "genie"

# Dock: Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Dock: Show recent applications
defaults write com.apple.dock show-recents -bool false

# Dock: Show indicator lights for open applications
defaults write com.apple.dock show-process-indicators -bool true

# Dock: Make icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Dock: Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
# defaults write com.apple.dock autohide-delay -float 0.05
# defaults write com.apple.dock autohide-time-modifier -float 0.25

# Show hidden apps on doc
defaults write com.apple.Dock showhidden -bool YES

#
killall Dock

