#!/usr/bin/env bash
#
# Use tdrop to show/hide a given terminal program, and saving that session.
# 
# The terminal program can take arguments, just make sure to quote everything.
# Only the program name is used as an identifier (-n), so calling the same
# terminal program with different arguments will collide.
#

store=/tmp/dropdown

# Show or hide dropdown if argument given.
if [[ -n $1 ]]; then
	call="$1"
	id=$(echo "$1" | awk '{print $1}')
	tdrop -m -a -w 1200 -h 800 -x 0 -y -840 -n "$id" -f "-name floating -e $call" urxvt
fi

read -r curr < $store > /dev/null

# Close previous dropdown if exists.
if [[ -n $curr && $curr != $id ]]; then
	tdrop -n $curr urxvt
fi

# Write current state.
if [[ $curr == $id ]]; then
	rm $store
else
	echo $id > $store
fi
