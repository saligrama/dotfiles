#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(yay -Qu | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]; then
    echo "$pac %{F#a2864b}%{F-} $aur"
else
    echo ""
    exit
fi
