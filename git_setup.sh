#!/bin/bash
set -euo pipefail

EMAIL_1="bcobann35"
EMAIL_2="gmail.com"
USERNAME="berkaycoban"

echo ">> Setting Git author information"
git config --global user.name "${USERNAME}"
git config --global user.email "${EMAIL_1}@${EMAIL_2}"

echo ">> Configuring credential helper and HTTPS push"
git config --global credential.helper osxkeychain
git config --global url.git\@github\.com\:.pushInsteadOf https://github.com/

echo ">> Configuring diff-so-fancy colors"
git config --global core.pager "less --tabs=4 -RFX"
git config --global color.ui true
git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
git config --global color.diff.meta "227"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.commit "227 bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.diff.whitespace "red reverse"

echo ">> Configuring Git rebase and editor"
git config --global sequence.editor interactive-rebase-tool
git config --global core.editor "code --wait"
git config --global init.defaultBranch "main"

echo "✅ Git global configuration completed."