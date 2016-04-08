#!/bin/bash

if [[ ! -d ~/.oh-my-zsh ]]; then
  echo "Please install zsh and oh-my-zsh, then re-run this script"
  exit
fi

if [[ ! -f ./install.sh ]]; then
  echo "Please cd to directory where script is located, then re-run this script"
  exit
fi

cp -r ./.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-higlighting

cp -r ./.oh-my-zsh/custom/themes/risto-custom.zsh-theme ~/.oh-my-zsh/themes/risto-custom.zsh-theme

cp ~/.zshrc ~/.zshrc-bkp

echo "Please edit your zshrc and add plugins zsh-syntax-highlighting and battery, and change ZSH_THEME to risto-custom. Automatic functionality will be added in a later version of this script."
