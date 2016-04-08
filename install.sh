#!/bin/bash

if [[ ! -d ~/.oh-my-zsh ]]; then
  echo "Please install zsh and oh-my-zsh, then re-run this script"
  exit
fi

if [[ ! -f ./install.sh ]]; then
  echo "Please cd to directory where script is located, then re-run this script"
  exit
fi

cp -rn ./.oh-my-zsh ~/.oh-my-zsh

cp ~/.zshrc ~/.zshrc-bkp

echo "Please edit your zshrc and add plugins zsh-syntax-highlighting and battery, and change ZSH_THEME to risto-custom. Automatic functionality will be added in a later version of this script."
