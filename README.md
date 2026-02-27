# Benvido aos meus Dotfiles

Estes son os dotfiles que uso en Arch + Hyprland nos meus dispositivos

## Dependencias

Instala este software para que os dotfiles funcionen correctamente

### YAY

YAY é 100% necesario xa que algúns programas e utilidades dependen del

```bash
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && sudo rm -r yay
```

### Activar [multilib] en pacman

```bash
sudo nvim /etc/pacman.conf
```

Elimina os comentarios das seguintes liñas:

```
[multilib]
Include = /etc/pacman.d/mirrorlist
```

### Fontes

Estas son as fontes que uso na maioría das partes do meu sistema

```bash
sudo pacman -S noto-fonts-cjk noto-fonts-emoji otf-commit-mono-nerd
```

### Paquetes

Estes son os 100% necesarios para que os meus dots funcionen. Podes substituílos todos se queres pero perderás funcionalidade

```bash
sudo pacman -S rust sddm flatpak kitty neovim firefox hyprland hypridle hyprlock hyprpaper hyprpicker waybar wl-clipboard yazi swaync grim slurp trash-cli hyprpolkitagent util-linux pipewire pavucontrol ffmpeg xorg-xrandr wireplumber 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick util-linux zip tar xsettingsd bluez-utils libnotify libpulse btop blueman gnome-themes-extra xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xdg-user-dirs qt6ct qt5ct qt5-base qt6-base qt5-wayland qt6-wayland qt5-virtualkeyboard qt6-virtualkeyboard
```

```bash
yay -S walker elephant-all rar
```

## Instalación

> [!CAUTION]
> Isto eliminará algunhas das túas carpetas `.config` e outras, así que fai unha copia de seguridade antes de continuar

### Configuración de Elephant:

Esta é a configuración de Elephant

```bash
rm -r ~/.config/elephant && ln -s ~/.dotfiles/.config/elephant ~/.config/elephant
```

### Configuración de GTK:

Esta é a configuración de GTK 3/4

```bash
rm -r ~/.config/gtk-3.0 ~/.config/gtk-4.0 && ln -s ~/.dotfiles/.config/gtk-3.0 ~/.config/gtk-3.0 && ln -s ~/.dotfiles/.config/gtk-4.0 ~/.config/gtk-4.0
```

### Tema de Hypr\*:

Isto inclúe os temas e configuracións de Hyprland, Hyprpaper, Hypridle, Hyprlock...

```bash
rm -r ~/.config/hypr && ln -s ~/.dotfiles/.config/hypr ~/.config/hypr && mkdir -p ~/.config/hypr/custom/hyprland && touch ~/.config/hypr/custom/hyprland/autostart.conf ~/.config/hypr/custom/hyprland/envs.conf ~/.config/hypr/custom/hyprland/input.conf ~/.config/hypr/custom/hyprland/keybindings-mod.conf ~/.config/hypr/custom/hyprland/keybindings.conf ~/.config/hypr/custom/hyprland/look-and-feel.conf ~/.config/hypr/custom/hyprland/monitors.conf ~/.config/hypr/custom/hyprland/perms.conf ~/.config/hypr/custom/hyprland/windows.conf ~/.config/hypr/custom/hyprland/workspaces.conf
```

### Tema de Kitty:

Esta é a configuración e estilos do terminal Kitty

```bash
rm -r ~/.config/kitty && ln -s ~/.dotfiles/.config/kitty ~/.config/kitty && touch ~/.config/kitty/custom.conf
```

### Tema de Mako:

Esta é a configuración e estilos do daemon de notificacións Mako

```bash
rm -r ~/.config/mako && ln -s ~/.dotfiles/.config/mako ~/.config/mako
```

### Tema de QT:

Esta é a configuración e estilos de QT 5/6

```bash
rm -r ~/.config/qt6ct ~/.config/qt5ct && ln -s ~/.dotfiles/.config/qt6ct ~/.config/qt6ct && ln -s ~/.dotfiles/.config/qt5ct ~/.config/qt5ct
```

### Configuración de Walker:

Estas son as configuracións e estilos de Walker

```bash
rm -r ~/.config/walker && ln -s ~/.dotfiles/.config/walker ~/.config/walker
```

### Tema de Waybar:

Esta é a configuración e estilos de Waybar

```bash
rm -r ~/.config/waybar && ln -s ~/.dotfiles/.config/waybar ~/.config/waybar && mkdir -p .config/autostart && cp /etc/xdg/autostart/nm-applet.desktop ~/.config/autostart/nm-applet.desktop && echo "Hiden=true" >> ~/.config/autostart/nm-applet.desktop
```

### Configuración de xsettingsd:

Esta é a configuración de xsettingsd

```bash
rm -r ~/.config/xsettingsd && ln -s ~/.dotfiles/.config/xsettingsd ~/.config/xsettingsd
```

### Tema de Yazi:

Esta é a configuración e estilos de Yazi

```bash
rm -r ~/.config/yazi && ln -s ~/.dotfiles/.config/yazi ~/.config/yazi && ya pkg install
```

### Configuración de bashrc:

Esta é a configuración e cargador personalizado de .bashrc

```bash
rm -r ~/.bashrc ~/.config/bashrc && ln -s ~/.dotfiles/.bashrc ~/.bashrc && ln -s ~/.dotfiles/.config/bashrc ~/.config/bashrc && touch ~/.bashrc_custom && mkdir -p ~/.config/bashrc/custom
```

## Configuracións e paquetes persoais

Tamén modifiquei algunhas cousas para facilitarme a vida. Podes executar estes comandos para replicalo pero é 100% elección persoal

### Paquetes persoais

Non necesitas estes paquetes. É unha lista de programas que uso case todos os días, así que poden serte útiles tamén

```bash
sudo pacman -S qbittorrent discord libreoffice-still krita filezilla keepassxc yt-dlp handbrake obs-studio element-desktop
```

```bash
yay -S visual-studio-code-bin affine-bin puddletag librewolf-bin
```

```bash
flatpak install com.protonvpn.www com.usebruno.Bruno org.torproject.torbrowser-launcher com.valvesoftware.Steam
```

### Configurar os directorios do fogar

Uso algúns directorios para cousas persoais e estes necesitan configuración para que outras aplicacións os usen correctamente

```bash
mkdir ~/Escritorio ~/Descargas ~/Desarrollo ~/Modelos ~/Público ~/Documentos ~/Música ~/Imaxes ~/Vídeos ~/Xogos ~/Aplicacións && rm -r ~/.config/user-dirs.dirs ~/.config/user-dirs.conf && cp ~/.dotfiles/.config/user-dirs.dirs ~/.config/user-dirs.dirs && cp ~/.dotfiles/.config/user-dirs.conf ~/.config/user-dirs.conf
```

### Configurar as aplicacións predeterminadas

Teño algunhas configuracións para as miñas apps predeterminadas para que calquera ligazón e similares se abran na aplicación correcta

```bash
rm -r ~/.config/mimeapps.list && cp ~/.dotfiles/.config/mimeapps.dirs ~/.config/mimeapps.list
```

### Crear un enlace simbólico ao directorio de dispositivos montados

Isto só é necesario se usas `udiskctl` ou `udiskie`. Moi útil se usas o plugin `mount` de Yazi

```bash
mkdir -p /run/media/$(whoami) && ln -s /run/media/$(whoami) ~/USBs
```
