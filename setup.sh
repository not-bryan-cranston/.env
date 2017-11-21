#!/bin/bash

# create folders
cd ~
mkdir downloads
mkdir -p .config/i3
mkdir -p .config/polybar
mkdir -p .config/rofi

# setup symlinks
ln -s .env/.Xresources .Xresources
ln -s .env/i3/config .config/i3/config
ln -s .env/polybar/config .config/polybar/config
ln -s .env/rofi/config .config/rofi/config
