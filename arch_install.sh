#!/bin/sh

sudo pacman -S git \
	base-devel \
	stow \
	nvidia-open \
	core/openssh \
	egl-wayland \
	zsh \
	nvim \
	nvidia-utils \
	hyprlan \
	kitty \
	wofi \
	waybar \
	ttf-font-awesome \
	noto-fonts-emoji \
	dolphin \
	hyprshot

git clone https://aur.archlinux.org/yay.git

cd yay
makepckg -si
cd ..
rm -rf yay

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
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
echo "Remove KMS from /etc/mkinitcpio.conf HOOKS list"
echo "After enabling multilib in /etc/pacman.conf"
echo "
sudo pacman -S steam \
	discord \
	unzip
"

