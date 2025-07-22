#!/bin/bash
set -euxo pipefail

KEY_NAME="github_rsa_$(date +%Y%m%d%H%M%S)"
SSH_KEY_PATH="$HOME/.ssh/$KEY_NAME"

echo ">> Generating new SSH key: $KEY_NAME"

mkdir -p "$HOME/.ssh"

ssh-keygen -f $SSH_KEY_PATH

ssh-add $SSH_KEY_PATH
/usr/bin/ssh-add $SSH_KEY_PATH

echo "✅ New SSH key generated at $SSH_KEY_PATH"
cat "${SSH_KEY_PATH}.pub" | pbcopy

echo "📋 Public key copied to clipboard."
echo "👉 Paste it to GitHub: https://github.com/settings/keys"