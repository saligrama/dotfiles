#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally

player_status=$(playerctl status 2> /dev/null)
if [[ $? -eq 0 ]]; then
    metadata="$(playerctl metadata artist) - $(playerctl metadata title)"
fi

# Foreground color formatting tags are optional
if [[ $player_status = "Playing" ]]; then
    echo "%{F#c795ae} $metadata"       # blue when playing
elif [[ $player_status = "Paused" ]]; then
    echo "%{F#c7ccd1} $metadata"       # Greyed out info when paused
else
    echo ""
fi
