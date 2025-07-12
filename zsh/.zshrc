export ZSH="$HOME/.oh-my-zsh"
eval "$(starship init zsh)"
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

plugins=(git dotenv)
source $ZSH/oh-my-zsh.sh
