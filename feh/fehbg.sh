#!/bin/bash

background="$HOME/.env/feh/bg.jpg"
default="$HOME/.env/feh/default.jpg"

if [ -e "$background" ]; then
	feh --no-fehbg --bg-scale "$background"
else
	feh --no-fehbg --bg-scale "$default"
fi
