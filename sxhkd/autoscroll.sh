#!/bin/bash
# Autoscroll (hold only)

middlemousebutton=2

mousescrollup=4
mousescrolldown=5
mousescrollleft=6
mousescrollright=7

enableverticalscroll=1
enablehorizontalscroll=1

## Danger below :D

echo -n | xsel -n -i
eval $(xdotool getmouselocation --shell)
starty=$Y
startx=$X
toggle=$middlemousebutton
while [[ $toggle -eq $middlemousebutton ]]
do
    eval $(xdotool getmouselocation --shell)
    curry=$Y
    currx=$X
    if [ $enableverticalscroll -eq 1 ]
    then
        if [ $curry -gt $starty ]
        then
            speedy=$(expr $curry / 100 - $starty / 100)
            if [ $speedy -gt 0 ]
            then
                xdotool click --repeat $speedy --delay 1 $mousescrolldown
            fi
        else
            speedy=$(expr $curry / 100  - $starty / 100  | sed 's:-::')
            if [ $speedy -gt 0 ]
            then
                xdotool click --repeat $speedy --delay 1 $mousescrollup
            fi
        fi
    fi

    if [ $enablehorizontalscroll -eq 1 ]
    then
        if [ $currx -gt $startx ]
        then
            speedx=$(expr $currx / 100 - $startx / 100)
            if [ $speedx -gt 0 ]
            then
                xdotool click --repeat $speedx --delay 1 $mousescrollright
            fi
        else
            speedx=$(expr $currx / 100  - $startx / 100  | sed 's:-::')
            if [ $speedx -gt 0 ]
            then
                xdotool click --repeat $speedx --delay 1 $mousescrollleft
            fi
        fi
    fi

    toggle=$(xinput --list "Virtual core pointer" | grep -i -m 1 "Button state:" | grep -o "[$middlemousebutton]\+")
    sleep 0.02
done
