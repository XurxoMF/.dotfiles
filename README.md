# Welcome to my Dotfiles

This are the dotfiles I use on Arch + Hyprland on my devices

## Dependencies

Install this software for the dotfiles to work properly

### YAY

YAY is 100% required as some programs and utilities depend on it

```bash
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && sudo rm -r yay
```

### Enable [multilib] on pacman

```bash
sudo nvim /etc/pacman.conf
```

Remove comments on the next lines:

```
[multilib]
Include = /etc/pacman.d/mirrorlist
```

### Fonts

This ones are the fonts I use on most parts of my system

```bash
sudo pacman -S noto-fonts-cjk noto-fonts-emoji otf-commit-mono-nerd
```

### Packages

This ones are the 100% required for my dots to work. You can replace all of them if you want but you'll loose functionality

```bash
sudo pacman -S rust sddm flatpak kitty neovim firefox hyprland hypridle hyprlock hyprpaper hyprpicker waybar wl-clipboard yazi swaync grim slurp trash-cli hyprpolkitagent util-linux pipewire pavucontrol ffmpeg xorg-xrandr wireplumber 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick util-linux zip tar xsettingsd bluez-utils libnotify libpulse btop blueman gnome-themes-extra xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xdg-user-dirs qt6ct qt5ct qt5-base qt6-base qt5-wayland qt6-wayland qt5-virtualkeyboard qt6-virtualkeyboard
```

```bash
yay -S walker elephant-all rar
```

## Installation

> [!CAUTION]
> This will delete some of your `.config` and other folders so backup them up before you continue

### Elephant config:

This is the Elephant configuration

```bash
rm -r ~/.config/elephant && ln -s ~/.dotfiles/.config/elephant ~/.config/elephant
```

### GTK config:

This is the GTK 3/4 configuration

```bash
rm -r ~/.config/gtk-3.0 ~/.config/gtk-4.0 && ln -s ~/.dotfiles/.config/gtk-3.0 ~/.config/gtk-3.0 && ln -s ~/.dotfiles/.config/gtk-4.0 ~/.config/gtk-4.0
```

### Hypr\* theme:

This includes Hyprland, Hyprpaper, Hypridle, Hyprlock... themes and configurations

```bash
rm -r ~/.config/hypr && ln -s ~/.dotfiles/.config/hypr ~/.config/hypr && mkdir -p ~/.config/hypr/custom/hyprland && touch ~/.config/hypr/custom/hyprland/autostart.conf ~/.config/hypr/custom/hyprland/envs.conf ~/.config/hypr/custom/hyprland/input.conf ~/.config/hypr/custom/hyprland/keybindings-mod.conf ~/.config/hypr/custom/hyprland/keybindings.conf ~/.config/hypr/custom/hyprland/look-and-feel.conf ~/.config/hypr/custom/hyprland/monitors.conf ~/.config/hypr/custom/hyprland/perms.conf ~/.config/hypr/custom/hyprland/windows.conf ~/.config/hypr/custom/hyprland/workspaces.conf
```

### Kitty theme:

This are the Kitty terminal configuration and styles

```bash
rm -r ~/.config/kitty && ln -s ~/.dotfiles/.config/kitty ~/.config/kitty && touch ~/.config/kitty/custom.conf
```

### Mako theme:

This is the Mako notification daemon configuration and styles

```bash
rm -r ~/.config/mako && ln -s ~/.dotfiles/.config/mako ~/.config/mako
```

### QT theme:

This is the QT 5/6 configuration and styles

```bash
rm -r ~/.config/qt6ct ~/.config/qt5ct && ln -s ~/.dotfiles/.config/qt6ct ~/.config/qt6ct && ln -s ~/.dotfiles/.config/qt5ct ~/.config/qt5ct
```

### Walker config:

This are the Walker configurations and styles

```bash
rm -r ~/.config/walker && ln -s ~/.dotfiles/.config/walker ~/.config/walker
```

### Waybar theme:

This is the Waybar configuration and styles

```bash
rm -r ~/.config/waybar && ln -s ~/.dotfiles/.config/waybar ~/.config/waybar && mkdir -p .config/autostart && cp /etc/xdg/autostart/nm-applet.desktop ~/.config/autostart/nm-applet.desktop && echo "Hiden=true" >> ~/.config/autostart/nm-applet.desktop
```

### xsettingsd config:

This is the xsettingsd configuration

```bash
rm -r ~/.config/xsettingsd && ln -s ~/.dotfiles/.config/xsettingsd ~/.config/xsettingsd
```

### Yazi theme:

This is the Yazi configuration and styles

```bash
rm -r ~/.config/yazi && ln -s ~/.dotfiles/.config/yazi ~/.config/yazi && ya pkg install
```

### bashrc config:

This is the custom .bashrc config and loader

```bash
rm -r ~/.bashrc && ln -s ~/.dotfiles/.bashrc ~/.bashrc && mkdir -p ~/.config/bashrc
```

## Personal configs and packages

I've also modified a few things to make my life easier. You can run this commands to replicate it but it's 100% personal choice

### Personal packages

You don't need this packages. It's a list of programs I use almost every day so they may be useful for you too

```bash
sudo pacman -S qbittorrent discord libreoffice-still krita filezilla keepassxc yt-dlp handbrake obs-studio element-desktop
```

```bash
yay -S visual-studio-code-bin affine-bin puddletag librewolf-bin
```

```bash
flatpak install com.protonvpn.www com.usebruno.Bruno org.torproject.torbrowser-launcher
```

### Configure home directories

I use some directories for personal things and those need configuration for other apps to use them correctly

```bash
mkdir ~/Escritorio ~/Descargas ~/Modelos ~/Público ~/Documentos ~/Música ~/Imaxes ~/Vídeos ~/Xogos ~/Aplicacións && rm -r ~/.config/user-dirs.dirs ~/.config/user-dirs.conf && cp ~/.dotfiles/.config/user-dirs.dirs ~/.config/user-dirs.dirs && cp ~/.dotfiles/.config/user-dirs.conf ~/.config/user-dirs.conf
```

### Configure default apps

I've some configs for my default apps so any link and so on opens on the correct app

```bash
rm -r ~/.config/mimeapps.list && cp ~/.dotfiles/.config/mimeapps.dirs ~/.config/mimeapps.list
```

### Create a symlink to the mounted devices directory

This is only needed if you use `udiskctl` or `udiskie`. Really nice if you use the `mount` plugin for Yazi

```bash
mkdir -p /run/media/$(whoami) && ln -s /run/media/$(whoami) ~/USBs
```
