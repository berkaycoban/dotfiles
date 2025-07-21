#!/bin/bash
set -euxo pipefail

KEY_NAME="github_rsa_$(date +%Y%m%d%H%M%S)"
SSH_KEY_PATH="$HOME/.ssh/$KEY_NAME"

echo ">> Generating new SSH key: $KEY_NAME"

mkdir -p "$HOME/.ssh"
ssh-keygen -t rsa -b 4096 -f "$SSH_KEY_PATH" -N "" -C "berkaycoban@github"

# Automatically add the key to ssh-agent and keychain
eval "$(ssh-agent -s)"
/usr/bin/ssh-add --apple-use-keychain "$SSH_KEY_PATH"

echo "✅ New SSH key generated at $SSH_KEY_PATH"
cat "${SSH_KEY_PATH}.pub" | pbcopy
echo "📋 Public key copied to clipboard."
echo "👉 Paste it to GitHub: https://github.com/settings/keys"