#!/bin/bash
all=$(yay -Qqu | wc -l)
#aur="0"

source "$HOME/.cache/wal/colors.sh"

if [[ "$all" != "0" ]]; then
    aur=$(yay -Qqua | wc -l)
    pac=$((all - aur))
    echo "%{B$color9} $pac  $aur "
else
    echo ""
    exit
fi
