#!/bin/bash
set -euxo pipefail

echo ">> Installing Xcode command line tools"
/usr/bin/xcode-select --install || true

echo ">> Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo ">> Setting up macOS defaults"
bash ./macos-defaults.sh

echo ">> Running brew bundle"
brew bundle --file=./Brewfile

echo ">> Generating SSH key"
bash ./ssh_setup.sh

echo ">> Installing zsh & oh-my-zsh"
bash ./install_zsh.sh

echo ">> Linking dotfiles"
ln -sf $(pwd)/.zshrc ~/.zshrc

echo ">> Running git global setup"
bash ./git_setup.sh

echo "✅ Setup complete. Restart your terminal."