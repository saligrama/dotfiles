#!/usr/bin/env zsh

if [[ $EUID -eq 0 ]]; then
    PCOLOR='red'
else
    PCOLOR='magenta'
fi

PROMPT="%{$fg_bold[$PCOLOR]%}%m%{$reset_color%}:%{$fg_bold[blue]%}%2~%{$reset_color%} >> "
RPROMPT="$(git_prompt_info)"
