#!/bin/bash
echo $(($(cat /home/asaligrama/.config/dunst/discord_notifs.txt) + 1)) > /home/asaligrama/.config/dunst/discord_notifs.txt
