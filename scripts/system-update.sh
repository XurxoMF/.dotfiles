#!/usr/bin/env bash

printf "Actualizando sistema...\n"
sudo -v

printf "\nActualizando pacman e AUR...\n"
yay -Syu

printf "\nActualizando flatpak...\n"
flatpak update

printf "\nActualizando plugins de Yazi...\n"
ya pkg upgrade

printf "\nActualizando MIME types...\n"
~/.dotfiles/scripts/mime-merge.sh

printf "\nActualización completada!\n"

read -rsn 1 -p "Presiona calquera tecla para continuar..."

printf "\n"

kill $PPID