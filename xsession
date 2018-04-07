#!/bin/sh

# x settings
xset -b
xsetroot -solid "#000000"

# start urxvtd
urxvtd -q -f -o

# launch env
exec i3
