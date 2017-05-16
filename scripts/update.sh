#!/bin/sh
sudo pacman -Syyuu  # updates packages
yaourt --noconfirm -Su --aur  # updates AUR packages

sudo pacman -Rcs $(pacman -Qtdq)  # removes orphaned packages


