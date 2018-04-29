#!/usr/bin/env bash
#
# Check if OpenVPN is running and display an icon.
#

lock_closed=""
lock_open=""
key=""

if pgrep -x openvpn > /dev/null; then
	echo "$key"
else
	echo ""
fi
