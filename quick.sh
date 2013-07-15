#!/bin/bash

echo "Moka-Dark development quick render & install script."

echo "Entering working directory..."
cd ~/dev/moka-icon-theme-dark
echo "Done."

echo "Rendering PNGs..."
./render-pngs.py
echo "Done."

echo "Trimming Tray icons..."
./trim-tray-icons.sh
echo "Done."

echo "Updating Moka-Dark icon cache..."
gtk-update-icon-cache /home/sam/dev/moka-icon-theme-dark/Moka-Dark/
echo "Done."

echo "Synchronizing new icons with local icon theme..."
rsync -av --exclude='.git' Moka-Dark/ /home/sam/.icons/Moka-Dark
echo "Done."

echo "Resetting desktop icon set..."
gsettings reset org.gnome.desktop.interface icon-theme
echo "Done."

echo "Setting Moka-Dark icon as desktop icon set..."
gsettings set org.gnome.desktop.interface icon-theme "Moka-Dark"
echo "Done."