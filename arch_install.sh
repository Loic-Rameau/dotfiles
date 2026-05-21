#!/bin/sh

sudo pacman -Syu
sudo pacman -Sy --needed git \
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
	ttf-font-awesome \
	noto-fonts-emoji \
	dolphin \
	hyprshot \
	pipewire \
	pipewire-pulse \
	wireplumber

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
	kvantum-qt5 \
	noctalia-shell

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
echo "Remove KMS from /etc/mkinitcpio.conf HOOKS list"
echo "After enabling multilib in /etc/pacman.conf"
echo "
sudo pacman -S steam \
	discord \
	unzip
"

systemctl --user enable --now hypridle.service
systemctl --user enable --now pipewire.service
systemctl --user enable --now pipewire-pulse.service
systemctl --user enable --now wireplumber.service
