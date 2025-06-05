#!/bin/bash

# Sets reasonable macOS defaults.
# https://macos-defaults.com/

# Show the ~/Library folder.
chflags nohidden ~/Library

# Enable HiDPI display modes (requires restart)
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# UI: Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# Trash: Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Menu bar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent YES

# Terminal: Only use UTF-8 in Terminal.app
# defaults write com.apple.terminal StringEncodings -array 4

### Dashboard

# Dashboard: Don’t group windows by application in Mission Control
# (i.e. use the old Exposé behavior instead)
defaults write com.apple.dock expose-group-by-app -bool false

# Dashboard: Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Dashboard: Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true
