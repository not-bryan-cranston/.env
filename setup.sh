#!/bin/bash

distro=$(cat /etc/os-release |& grep '^ID=' | cut -d '=' -f 2)

# install software
# TODO: actually test this and add missing software
if [ "$distro" = "arch" ]; then
	# desktop environment
	sudo pacman -S --noconfirm i3 rofi ranger zathura compton xautolock scrot ttf-dejavu ttf-font-awesome 
	# tools
	sudo pacman -S --noconfirm gvim git gdb ltrace strace rsync nmap traceroute
	# software
	sudo pacman -S --noconfirm firefox keepassx2 irssi transmission openvpn
	# media
	sudo pacman -S --noconfirm mpd mpc ncmpcpp mpv gimp 
fi

# create folders
mkdir -p downloads
mkdir -p .config/i3
mkdir -p .config/polybar
mkdir -p .config/rofi
mkdir -p .config/zathura

# link dotfiles
ln -s ~/.env/xinitrc .xinitrc
ln -s ~/.env/xsession .xsession
ln -s ~/.env/Xresources .Xresources

ln -s ~/.env/bash_profile .bash_profile
ln -s ~/.env/bashrc .bashrc

ln -s ~/.env/vimrc .vimrc

ln -s ~/.env/gdbinit .gdbinit

# link various configs
ln -s ~/.env/i3/config .config/i3/config
ln -s ~/.env/gtk-3.0/settings.ini .config/gtk-3.0/settings.ini
ln -s ~/.env/polybar/config .config/polybar/config
ln -s ~/.env/rofi/config .config/rofi/config
ln -s ~/.env/zathura/zathurarc .config/zathura/zathurarc
