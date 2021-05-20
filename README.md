# berkay's macOS Setup

## OS Settings

> TODO: find `defaults write` commands for these.

- Remove useless items from the dock
- Drag `Downloads` folder next to the Trash on the Dock.
  - Right click &rarr; Sort by Date Added.
- Move \$HOME folder to finder sidebar.

Tweaks:

```
# Show date on menu bar (format: 20 May Thu 10:05)
defaults write com.apple.menuextra.clock DateFormat -string "d MMMM EEE HH:mm"

defaults write NSGlobalDomain AppleShowScrollBars -string "Always" # show scrollbar always
defaults write com.apple.finder AppleShowAllFiles true   # Show hidden files
defaults write com.apple.finder ShowStatusBar -bool true # Show Finder statusbar

# disable show recent apps
defaults write com.apple.dock show-recents -bool false

# Default Finder location is the home folder
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
  defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

chflags nohidden ~/Library                               # Unhide ~/Library

# disable smart quotes and dashes, and autocorrect, autoperiod and suggestions
defaults write 'Apple Global Domain' NSAutomaticDashSubstitutionEnabled 0
defaults write 'Apple Global Domain' NSAutomaticQuoteSubstitutionEnabled 0
defaults write 'Apple Global Domain' NSAutomaticPeriodSubstitutionEnabled 0
defaults write 'Apple Global Domain' NSAutomaticSpellingCorrectionEnabled 0
defaults write 'Apple Global Domain' NSAutomaticTextCompletionEnabled 0
defaults write 'Apple Global Domain' WebAutomaticSpellingCorrectionEnabled 0

# Save screenshoots to the ~/screenshots folder
mkdir ${HOME}/screenshoots && defaults write com.apple.screencapture location -string "${HOME}/screenshoots"

# Resize dock icon size
defaults write com.apple.dock tilesize -int 50
```

## Package manager

- Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

- Run `brew analytics off`

## Installing software via Homebrew

All software installed on the system must be listed in `.Brewfile`. This is
symlinked at `~/.Brewfile` and used by `brew bundle`.

## Shell

- Run 2 times .install_zsh.sh

## Post-Installation Configuration

- **Spectacle**
  - Security->Accessibility: Give access
  - Launch at Login

## Settings Sync

- iTerm2Preferences->Profiles->Other Actions->Import &mdash; berkay-iTerm2.json
  - Restart iTerm2.
- VSCode:
  - Run "Settings Sync"

## Git Setup

Run:

    ./git_setup.sh

Generate key with a password:

    ssh-keygen -f $HOME/.ssh/github_rsa

(You may want to redact hostname from the public key.)

Add key to the keychain:

    ssh-add $HOME/.ssh/github_rsa          # company-installed
    /usr/bin/ssh-add $HOME/.ssh/github_rsa # system

Upload the key to GitHub. https://github.com/settings/keys :

    cat ~/.ssh/github_rsa.pub| pbcopy

Save this to ~/.ssh/config:

Test connection:

    ssh -T git@github.com -i ~/.ssh/github_rsa
