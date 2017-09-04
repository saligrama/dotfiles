#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
    echo "%{F#eceff1}$pac%{F-} %{F#ff9800}%{F-} %{F#eceff1}$aur%{F-}"
fi
