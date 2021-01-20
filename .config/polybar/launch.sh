#!/usr/bin/env sh

## Add this to your wm startup file.
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# https://stackoverflow.com/questions/19771965/split-bash-string-by-newline-characters
monitors=$(xrandr -q | grep " connected" | cut -d ' ' -f1)
readarray -t y <<<"$monitors"

for i in "${y[@]}"
do
	MONITOR=$i polybar --reload workspace-i3 &
       	MONITOR=$i polybar --reload music &
	MONITOR=$i polybar --reload status &
done

