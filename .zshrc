export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

  # basic prompt
  PROMPT='%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %{$fg[yellow]%}%(!.#.$)%{$reset_color%} '

  export UPDATE_ZSH_DAYS=7
	export DISABLE_UPDATE_PROMPT=true # accept updates by default

source $HOME/.bashrc

export GPG_TTY=$(tty) # git
export PATH
