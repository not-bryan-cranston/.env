#!/usr/bin/env bash
#
# Use tdrop to show/hide a given terminal program, and saving that session.
# 
# The terminal program can take arguments, just make sure to quote everything.
# Only the program name is used as an identifier (-n), so calling the same
# terminal program with different arguments will collide.
#

store=/tmp/dropdown

call="$1"
id=$(echo "$1" | awk '{print $1}')

# Hide existing dropdown if exists.
read -r curr < $store > /dev/null
if [[ -n $curr ]]; then
	tdrop -n $curr urxvt
	rm $store
fi

# Exit if no argument given.
if [[ -z $1 ]]; then
	exit 1
fi

# Show dropdown if it wasn't just closed.
if [[ $curr != $id ]]; then
	tdrop -m -a -w 1200 -h 800 -x 0 -y -840 -n "$id" -f "-name floating -e $call" urxvt
	echo $id > $store
fi
