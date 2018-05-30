#!/bin/bash

# Source machine specific config in case window manager hasn't done this yet.
# This is a hack. Ideally .xsession would source .bashrc, but I ran into some
# strange bugs.
source $HOME/.config/bashrc

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Get wireless interface.
wi="$(iw dev | grep Interface | sed -n 1p | cut -d ' ' -f 2)"

# Launch bar(s)
if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m WIRELESS_INTERFACE=$wi polybar main &
	done
else
	polybar main &
fi

echo "Polybar launched."
