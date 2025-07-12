#!/bin/sh

sudo pacman -S git \
	core/openssh \
	yay \
	egl-wayland \
	zsh \
	nvim \
	nvidia-utils \
	hyprlan \
	kitty \
	wofi \
	waybar \
	ttf-font-awesome \
	dolphin \
	hyprshot

yay -S zen-browser-bin \
	swaync \
	pavucontrol \
	hyprpaper \
	hyprlock \
	hypridle \
	starship \
	ttf-cascadia-code-nerd \
	kservice5 \
	kvantum-git \
	kvantum-qt5

sudo pacman -S steam \
	discord \
	unzip

git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
echo "Remove KMS from /etc/mkinitcpio.conf HOOKS list"
