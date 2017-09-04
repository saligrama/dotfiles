#!/bin/bash

prepend_zero () {
    seq -f "%02g" $1 $1
}

artist=$(echo -n $(cmus-remote -C status | grep artist -m 1 | cut -c 12-))
song=$(echo -n $(cmus-remote -C status | grep title -m 1 | cut -c 11-))

position=$(cmus-remote -C status | grep position | cut -c 10-)
minutes1=$(prepend_zero $(($position / 60)))
seconds1=$(prepend_zero $(($position % 60)))

duration=$(cmus-remote -C status | grep duration | cut -c 10-)
minutes2=$(prepend_zero $(($duration / 60)))
seconds2=$(prepend_zero $(($duration % 60)))

metadata="$artist  -  $song"

player_status=$(cmus-remote -C status | grep status | cut -c 8-)

if [[ $player_status = "playing" ]]; then
    echo "%{F#458588} $metadata"       # blue when playing
elif [[ $player_status = "paused" ]]; then
    echo "%{F#a89984} $metadata"       # Greyed out info when paused
else
    echo ""
fi
