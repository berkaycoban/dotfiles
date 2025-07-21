#!/bin/bash
set -euxo pipefail

# Install Oh My Zsh if not installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo ">> Installing Oh My Zsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo ">> Oh My Zsh already installed."
fi

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Install zsh-autosuggestions plugin (only if missing)
if [ ! -d "${ZSH_CUSTOM}/plugins/zsh-autosuggestions" ]; then
  echo ">> Installing zsh-autosuggestions"
  git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM}/plugins/zsh-autosuggestions"
else
  echo ">> zsh-autosuggestions already installed."
fi

# Install zsh-syntax-highlighting plugin (only if missing)
if [ ! -d "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting" ]; then
  echo ">> Installing zsh-syntax-highlighting"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting"
else
  echo ">> zsh-syntax-highlighting already installed."
fi

echo "✅ Oh My Zsh and plugins installation complete."