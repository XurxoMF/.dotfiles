# Welcome to my Dotfiles

This are the dotfiles I use on Arch + Hyprland on my devices

## Dependencies

Install this software for the dotfiles to work properly

### YAY

YAY is 100% required as some programs and utilities depend on it

```bash
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && sudo rm -r yay
```

### Fonts

This ones are the fonts I use on most parts of my system

```bash
sudo pacman -S noto-fonts-cjk noto-fonts-emoji otf-commit-mono-nerd
```

### Packages

This ones are the 100% required for my dots to work. You can replace all of them if you want but you'll loose functionality

```bash
pacman -S sddm flatpak kitty neovim firefox hyprland hypridle hyprlock hyprpaper hyprpicker waybar wlogout wl-clipboard yazi mako grim slurp trash-cli hyprpolkitagent util-linux pipewire pavucontrol ffmpeg xrandr wireplumber 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick zip tar xsettingsd bluez-utils libnotify libpulse
```

```bash
yay -S walker elephant elephant-menus elephant-providerlist elephant-desktopapplications elephant-clipboard elephant-symbols elephant-calc elephant-archlinuxpkgs elephant-windows rar
```

> [!NOTE]
> If it asks to install `rust` or `rustup`, select `rust`.

```bash
pacman -S xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xdg-user-dirs
```

```bash
pacman -S qt5-base qt6-base qt5-wayland qt6-wayland qt5-virtualkeyboard qt6-virtualkeyboard
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

## Installation

> [!CAUTION]
> This will delete some of your `.config` and other folders so backup them up before you continue

### SDDM theme

To install the SDDM theme follow this steps

Copy the theme to the themes folder and chanhe the owner to root

```bash
sudo rm -r /usr/share/sddm/themes/sddm-xurxomf-theme
sudo cp -r ~/.dotfiles/sddm-xurxomf-theme /usr/share/sddm/themes/
sudo chown root:root /usr/share/sddm/themes/sddm-xurxomf-theme
```

Select the theme use use by sddm so it uses this one

```bash
echo "[Theme]
Current=sddm-xurxomf-theme" | sudo tee /etc/sddm.conf
```

Select the vistual keyboard to use on the login screen

```bash
echo "[General]
InputMethod=qtvirtualkeyboard" | sudo tee /etc/sddm.conf.d/virtualkbd.conf
```

### Elephant config:

This is the Elephant configuration

```bash
rm -r ~/.config/elephant
ln -s ~/.dotfiles/.config/elephant ~/.config/elephant
```

### Hypr\* theme:

This includes Hyprland, Hyprpaper, Hypridle, Hyprlock... themes and configurations

```bash
rm -r ~/.config/hypr
ln -s ~/.dotfiles/.config/hypr ~/.config/hypr
```

### Kitty theme:

This are the Kitty terminal configuration and styles

```bash
rm -r ~/.config/kitty
ln -s ~/.dotfiles/.config/kitty ~/.config/kitty
```

### Mako theme:

This is the Mako notification daemon configuration and styles

```bash
rm -r ~/.config/mako
ln -s ~/.dotfiles/.config/mako ~/.config/mako
```

### QT theme:

This is the QT configuration and styles

```bash
rm -r ~/.config/qt6ct
ln -s ~/.dotfiles/.config/qt6ct ~/.config/qt6ct
```

### Walker config:

This are the Walker configurations and styles

```bash
rm -r ~/.config/walker
ln -s ~/.dotfiles/.config/walker ~/.config/walker
```

### Waybar theme:

This is the Waybar configuration and styles

```bash
rm -r ~/.config/waybar
ln -s ~/.dotfiles/.config/waybar ~/.config/waybar
```

### xsettingsd config:

This is the xsettingsd configuration

```bash
rm -r ~/.config/xsettingsd
ln -s ~/.dotfiles/.config/xsettingsd ~/.config/xsettingsd
```

### Yazi theme:

This is the Yazi configuration and styles

```bash
rm -r ~/.config/wofi
ln -s ~/.dotfiles/.config/wofi ~/.config/wofi
ya pkg install
```

## Personal configs and packages

I've also modified a few things to make my life easier. You can run this commands to replicate it but it's 100% personal choice

### Personal packages

You don't need this packages. It's a list of programs I use almost every day so they may be useful for you too

```bash
sudo pacman -S qbittorrent discord libreoffice-still krita filezilla keepassxc yt-dlp handbrake obs-studio element-desktop
```

```bash
yay -S visual-studio-code-bin affine-bin puddletag
```

```bash
flatpak install com.protonvpn.www com.usebruno.Bruno org.torproject.torbrowser-launcher
```

### Configure home directories

I use some directories for personal things and those need configuration for other apps to use them correctly

```bash
rm -r ~/.config/user-dirs.dirs
cp ~/.dotfiles/.config/user-dirs.dirs ~/.config/user-dirs.dirs
```

### Create a symlink to the mounted devices directory

This is only needed if you use `udiskctl` or `udiskie`

```bash
ls -s /run/media/<username> ~/USBs
```
