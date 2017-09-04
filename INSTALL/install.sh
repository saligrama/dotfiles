#!/bin/bash -c

PACKAGE_MANAGER="pacaur"
DEPS_FILE="deps"
CONFIG_DIR="~/.config"

CP="/bin/cp -rv"
SH="/bin/sh"
MKDIR="/bin/mkdir -rp"

ROOTCP="/bin/sudo /bin/cp -v"
ROOTMKDIR="/bin/sudo /bin/mkdir -p"

# check we are in right directory
if [[ $(basename $(pwd)) != "INSTALL" ]]; then
  echo "Please cd into the INSTALL directory."
fi

# install packages
$PACKAGE_MANAGER -Sy --noconfirm --needed $(cat $DEPS_FILE)

# install oh-my-zsh
$SH -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# copy zsh files
$CP ../zsh/oh-my-zsh/* $HOME/.oh-my-zsh/
$CP ../zsh/zshrc $HOME/.zshrc

# copy i3 files
$MKDIR $HOME/.config/i3/wp
$CP ../i3/config $HOME/.config/i3/config

# copy polybar files
$MKDIR $HOME/.config/polybar/
$CP ../polybar/* $HOME/.config/polybar/

# copy compton files
$CP ../compton/compton.conf $HOME/.config/polybar/

# copy Xresources
$CP ../x/Xresources ~/.Xresources
xrdb merge ~/.Xresources

# copy misc stuff
$CP ../wp/* $HOME/.config/i3/wp/
$ROOTCP ../scripts/i3blur /usr/local/bin/i3blur
$ROOTMKDIR /usr/local/img/
$ROOTCP ../img/lock.png /usr/local/img/
