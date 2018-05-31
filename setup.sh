#!/bin/bash

distro=$(cat /etc/os-release |& grep '^ID=' | cut -d '=' -f 2)

# install software
# TODO: actually test this and add missing software

if [ "$distro" = "arch" ]; then
	# desktop environment
	sudo pacman -S --noconfirm i3 rofi ranger zathura compton conky xautolock
	sudo pacman -S --noconfirm scrot ttf-dejavu ttf-font-awesome

	# tools
	sudo pacman -S --noconfirm gvim git gdb ltrace strace rsync
	sudo pacman -S --noconfirm nmap traceroute fping
	sudo pacman -S --noconfirm avr-binutils avr-gcc avrdude avr-libc

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

linkdf() {
	rm .$1 2> /dev/null
	ln -s ~/.env/$1 .$1
}

linkdf xinitrc
linkdf xsession
linkdf Xresources

linkdf bash_profile
linkdf bashrc

linkdf vimrc
linkdf gdbinit

# link various configs

linkcf() {
	rm .config/$1 2> /dev/null
	ln -s ~/.env/$1 .config/$1
}

linkcf i3/config
linkcf gtk-3.0/settings.ini
linkcf polybar/config
linkcf rofi/config
linkcf zathura/zathurarc
