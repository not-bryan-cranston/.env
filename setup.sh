#!/bin/bash

# create folders
cd ~
mkdir -p downloads
mkdir -p .config/i3
mkdir -p .config/polybar
mkdir -p .config/rofi
mkdir -p .config/zathura

# setup symlinks
ln -s .env/.bash_profile .bash_profile
ln -s .env/bashrc .bashrc

ln -s .env/.Xresources .Xresources
ln -s .env/i3/config .config/i3/config
ln -s .env/polybar/config .config/polybar/config
ln -s .env/rofi/config .config/rofi/config
ln -s .env/zathura/zathurarc .config/zathura/zathurarc
