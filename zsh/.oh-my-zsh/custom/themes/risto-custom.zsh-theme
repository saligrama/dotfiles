# -*- sh -*- vim:set ft=sh ai et sw=4 sts=4:
# It might be bash like, but I can't have my co-workers knowing I use zsh
PROMPT='%{$fg_bold[magenta]%}%n%{$reset_color%}@%{$fg_bold[yellow]%}%m%{$reset_color%} %{$fg_bold[blue]%}%2~ $(git_prompt_info)%{$reset_color%}%# '
RPROMPT='%{$fg_bold[cyan]%}%D{%H:%M:%S %Z}%{$reset_color%} $(battery_level_gauge)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
