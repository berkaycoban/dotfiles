# berkay's macOS Setup

## OS Settings

> TODO: find `defaults write` commands for these.

- Show battery percentage on menu bar
- Show date on menu bar
- Keyboard &rarr; Text &rarr; Uncheck autocorrect and such settings.
- Remove useless items from the dock
- Drag `Downloads` folder next to the Trash on the Dock.
  - Right click &rarr; Sort by Date Added.
- Move \$HOME folder to finder sidebar.

Tweaks:

```
defaults write NSGlobalDomain AppleShowScrollBars -string "Always" # show scrollbar always
defaults write com.apple.finder AppleShowAllFiles true   # Show hidden files
defaults write com.apple.finder ShowStatusBar -bool true # Show Finder statusbar

# Default Finder location is the home folder
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
  defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

chflags nohidden ~/Library                               # Unhide ~/Library

# disable smart quotes and dashes
defaults write 'Apple Global Domain' NSAutomaticDashSubstitutionEnabled 0
defaults write 'Apple Global Domain' NSAutomaticQuoteSubstitutionEnabled 0
defaults write 'Apple Global Domain' NSAutomaticPeriodSubstitutionEnabled 0
```

## Shell

- Install oh-my-zsh: https://github.com/robbyrussell/oh-my-zsh
-

## Package manager

- Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

- Run `brew analytics off`

## Installing software via Homebrew

All software installed on the system must be listed in `.Brewfile`. This is
symlinked at `~/.Brewfile` and used by `brew bundle`.

## Post-Installation Configuration

- **Spectacle**
  - Security->Accessibility: Give access
  - Launch at Login

## Settings Sync

- iTerm2Preferences->Profiles->Other Actions->Import &mdash; berkay-iTerm2.json
  - Restart iTerm2.
- VSCode:
  - Install "Settings Sync" extension and reload.
  - Run '> Sync: Download Settings'

## Git Setup

Run:

    ./git_setup.sh
