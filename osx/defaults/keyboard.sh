#!/bin/bash

# Sets reasonable macOS defaults.
# https://macos-defaults.com/

### Keyboard:

# Enable key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
# Configure keyboard repeat https://apple.stackexchange.com/a/83923/200178
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
