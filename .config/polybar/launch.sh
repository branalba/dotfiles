#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done 

# get array of connected monitors
readarray -t monitors<<<"$(xrandr -q | grep " connected" | cut -d ' ' -f1)"

# loop through connected monitors
for i in "${monitors[@]}"
do      
	# load correct bar depending on one or two monitor setup
	if [ "${#monitors[@]}" = "1" ]
	then    
		MONITOR=$i polybar --reload workspace &
	else    
		MONITOR=$i polybar --reload workspace &
	fi
	# load other bars
	MONITOR=$i polybar --reload music &
	MONITOR=$i polybar --reload status &
done

