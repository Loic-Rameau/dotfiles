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

