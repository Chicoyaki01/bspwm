#!/usr/bin/env bash

# Terminate aleady running bar instances
killall -q polybar

# Wait unil the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar -c ~/.config/polybar/config.ini main &