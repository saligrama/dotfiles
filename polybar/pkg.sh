#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(yay -Qua | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]; then
    echo "$pac %{F#ce7673}%{F-} $aur"
else
    echo ""
    exit
fi
