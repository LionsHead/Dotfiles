#!/bin/bash

# Sets reasonable macOS defaults.

# Show the ~/Library folder.
chflags nohidden ~/Library

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# UI: Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# Possible values: `WhenScrolling`, `Automatic` and `Always`

# Trash: Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Menu bar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent YES

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Dashboard: Don’t group windows by application in Mission Control
# (i.e. use the old Exposé behavior instead)
defaults write com.apple.dock expose-group-by-app -bool false

# Dashboard: Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Dashboard: Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Safari & Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Safari: Set up for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Safari: Block pop-up windows
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false

# Safary: Update extensions automatically
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true

# Terminal: Only use UTF-8 in Terminal.app
# defaults write com.apple.terminal StringEncodings -array 4

# Enable key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
# Keyboard: Configure keyboard repeat https://apple.stackexchange.com/a/83923/200178
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2

# Keyboard: Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

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
defaults write com.apple.Dock showhidden -bool YES; killall Dock

