export ZSH="$HOME/.oh-my-zsh"
eval "$(starship init zsh)"
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

plugins=(git dotenv)
source $ZSH/oh-my-zsh.sh

if uwsm check may-start; then
    exec uwsm start hyprland-uwsm.desktop
fi

function updateDiscord() {
  CURRENT_DIR=$(pwd)
  cd $HOME/.cache
  mkdir tmp && cd tmp
  curl -L 'https://discord.com/api/download/stable?platform=linux&format=tar.gz' --output discord.tar.gz
  tar -xzf discord.tar.gz
  rm -rf /opt/discord/{locales,resources}
  mv Discord/* /opt/discord
  cd .. && rm -rf tmp
  cd $CURRENT_DIR
}

function shutdown() {
  hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'
}
export PATH=$HOME/.local/bin:$PATH

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
