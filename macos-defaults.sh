#!/bin/bash
set -euxo pipefail

echo ">> Applying macOS defaults"

defaults write com.apple.menuextra.clock DateFormat -string "d MMMM EEE HH:mm"
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
defaults write com.apple.finder AppleShowAllFiles true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
chflags nohidden ~/Library
mkdir -p ~/screenshoots
defaults write com.apple.screencapture location -string "${HOME}/screenshoots"
defaults write com.apple.dock tilesize -int 50

killall Finder || true
killall Dock || true