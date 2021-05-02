#!/bin/bash
pac=$(checkupdates | wc -l)
aur=$(yay -Qua | wc -l)

check=$((pac + aur))
if [[ "$check" != "0" ]]; then
    #echo "$pac %{F#FAB795}%{F-} $aur"
    echo "$pac %{F#FAB795}%{F-} $aur"
else
    echo ""
    exit
fi
