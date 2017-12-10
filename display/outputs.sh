#!/bin/bash

laptop=eDP1
external=

while true
do
	current="$(xrandr | grep ' connected' | grep -v eDP1 | awk '{print $1;}')"

	if [ -z "$current" ] && [ ! -z "$external" ]; then
		# external monitor disconnected
		xrandr --output "$external" --off
		external=
		i3-msg restart
	elif [ ! -z "$current" ] && [ "$current" != "$external" ]; then
		# new external monitor discovered
		xrandr --output "$current" --auto --right-of "$laptop"
		external="$current"
		i3-msg restart
	fi

	sleep 2
done
