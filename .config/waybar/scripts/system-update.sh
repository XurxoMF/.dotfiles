#!/usr/bin/env bash

printf "Actualizando sistema...\n"
sudo -v

printf "\nActualizando pacman...\n"
sudo pacman -Syu

printf "\nActualizando yay...\n"
yay -Syu

printf "\nActualizando flatpak...\n"
flatpak update

printf "\nActualizando plugins de Yazi...\n"
ya pkg upgrade

printf "\nActualización completada!\n\n"

read -rsn 1 -p "Presiona cualquier tecla para continuar..."
exit 0
