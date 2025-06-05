#!/bin/bash

# Sets reasonable macOS defaults.
# https://macos-defaults.com/

### Finder

# Show hidden files in the Finder.
# You can toggle the value using ⌘ cmd+⇧ shift+..
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"


# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Sllow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Show icons for hard drives, servers, and removable media on the desktop
# defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
# defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
# defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
# defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true
