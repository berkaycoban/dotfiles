export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git colored-man-pages)
source "$ZSH/oh-my-zsh.sh"

  # basic prompt
    PROMPT='%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %{$fg[yellow]%}%(!.#.$)%{$reset_color%} '

  export UPDATE_ZSH_DAYS=14
	export DISABLE_UPDATE_PROMPT=true # accept updates by default

source $HOME/.bashrc

export PATH