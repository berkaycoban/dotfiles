export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(
  git
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Basic prompt
PROMPT='%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %{$fg[yellow]%}%(!.#.$)%{$reset_color%} '

# Alias
alias l="ls -la"
alias c="clear"

# Auto updates
export UPDATE_ZSH_DAYS=7
export DISABLE_UPDATE_PROMPT=true

# Yarn global packages
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# LANG for React Native / CocoaPods (optional)
export LANG=en_US.UTF-8

# fnm (Fast Node Manager)
eval "$(fnm env --use-on-cd)"