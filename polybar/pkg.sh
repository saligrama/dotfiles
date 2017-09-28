#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]; then
    echo "$pac %{F#d33682}%{F-} $aur"
else
    echo ""
    exit
fi
