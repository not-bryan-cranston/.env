#!/bin/bash

# create folders
cd ~
mkdir downloads
mkdir -p .config/i3

# setup symlinks
ln -s .env/.Xresources .Xresources
ln -s .env/i3/config .config/i3/config
