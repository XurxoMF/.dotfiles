# Benvido aos meus Dotfiles

Estes son os dotfiles que uso en Arch + Hyprland nos meus dispositivos

## Dependencias

Instala este software para que os dotfiles funcionen correctamente

### Instalar YAY

YAY é 100% necesario xa que algúns programas e utilidades dependen del

```bash
sudo pacman -S --needed git base-devel && \
git clone https://aur.archlinux.org/yay.git && \
cd yay && \
makepkg -si && \
cd .. && \
sudo rm -rf yay
```

### Activar `[multilib]` en pacman

```bash
sudo nano /etc/pacman.conf
```

Elimina os comentarios das seguintes liñas:

```
[multilib]
Include = /etc/pacman.d/mirrorlist
```

### Paquetes requeridos

Estes son os 100% necesarios para que os meus dots funcionen. Podes substituílos todos se queres pero perderás funcionalidade

```bash
yay -Syu noto-fonts-cjk noto-fonts-emoji otf-commit-mono-nerd rust sddm flatpak kitty neovim firefox hyprland hypridle hyprlock hyprpicker waybar wl-clipboard yazi swaync grim slurp trash-cli hyprpolkitagent util-linux pipewire pavucontrol ffmpeg xorg-xrandr wireplumber 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick util-linux zip tar xsettingsd bluez-utils libnotify libpulse btop blueman gnome-themes-extra xdg-desktop-portal xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xdg-user-dirs qt5-base qt6-base qt5-wayland qt6-wayland qt5-virtualkeyboard qt6-virtualkeyboard walker elephant-all awww-bin matugen-bin breeze-icons breeze-gtk qt6ct-kde qt5ct-kde rar
```

### Paquetes opcionais/persoais

Estas son aplicacións que uso eu no día a día e que pode que sexan útiles para vos

```bash
yay -Syu visual-studio-code-bin affine-bin puddletag librewolf-bin qbittorrent discord libreoffice-still krita filezilla keepassxc yt-dlp handbrake obs-studio element-desktop vlc vlc-plugins-all docker docker-compose docker-buildx thunderbird
```

```bash
flatpak install com.protonvpn.www com.usebruno.Bruno org.torproject.torbrowser-launcher com.valvesoftware.Steam flatpak install flathub org.ppsspp.PPSSPP
```

## Instalación

> ⚠️ Isto eliminará algunhas das túas carpetas `.config` e outros arquivos como o `.bashrc` así que fai unha copia de seguridade antes de continuar!

> ⚠️ Importante executar en orden!

### Cambio de permisos dos scripts

```bash
chmod +x -R ~/.dotfiles/scripts
```

### Configuración de directorios

```bash
mkdir ~/Aplicacións ~/Desarrollo ~/Descargas ~/Documentos ~/Escritorio ~/Imaxes ~/Modelos ~/Música ~/Público ~/Vídeos ~/Xogos && \
rm -rf ~/.config/user-dirs.dirs ~/.config/user-dirs.conf && \
ln -s ~/.dotfiles/.config/user-dirs.dirs ~/.config/user-dirs.dirs && \
ln -s ~/.dotfiles/.config/user-dirs.conf ~/.config/user-dirs.conf
```

### Configuración de MIME Types

```bash
rm -rf ~/.config/mimeapps.list && \
ln -s ~/.dotfiles/.config/mimeapps.list ~/.config/mimeapps.list
```

### Enlace a USBs

Isto só é útil se usas `udiskctl`, `udiskie` ou o plugin `mount` de Yazi

```bash
rm -rf ~/USBs && \
ln -s /run/media ~/USBs
```

### Configuración de bashrc:

```bash
rm -rf ~/.bashrc ~/.config/bashrc && \
ln -s ~/.dotfiles/.bashrc ~/.bashrc && \
ln -s ~/.dotfiles/.config/bashrc ~/.config/bashrc && \
touch ~/.bashrc_custom && \
mkdir -p ~/.config/bashrc/custom && \
source ~/.bashrc
```

### Configuración dos portales XDG:

Esta é a configuración e dos portales XDG

```bash
rm -rf ~/.config/xdg-desktop-portal && \
ln -s ~/.dotfiles/.config/xdg-desktop-portal ~/.config/xdg-desktop-portal
```

### Configuración de Xsettingsd:

Esta é a configuración de xsettingsd

```bash
rm -rf ~/.config/xsettingsd && \
ln -s ~/.dotfiles/.config/xsettingsd ~/.config/xsettingsd
```

### Configuración de GTK3 e GTK4:

```bash
rm -rf ~/.config/gtk-3.0 ~/.config/gtk-4.0 && \
ln -s ~/.dotfiles/.config/gtk-3.0 ~/.config/gtk-3.0 && \
ln -s ~/.dotfiles/.config/gtk-4.0 ~/.config/gtk-4.0
```

### Configuración de QT5CT e QT6CT:

```bash
rm -rf ~/.config/qt6ct ~/.config/qt5ct && \
ln -s ~/.dotfiles/.config/qt6ct ~/.config/qt6ct && \
ln -s ~/.dotfiles/.config/qt5ct ~/.config/qt5ct
```

### Configuración de Kitty:

```bash
rm -rf ~/.config/kitty && \
ln -s ~/.dotfiles/.config/kitty ~/.config/kitty
```

### Tema de Yazi:

```bash
rm -rf ~/.config/yazi && \
ln -s ~/.dotfiles/.config/yazi ~/.config/yazi && \
ya pkg install
```

### Configuración de Waybar:

```bash
rm -rf ~/.config/waybar && \
ln -s ~/.dotfiles/.config/waybar ~/.config/waybar
```

### Configuración de BTOP++

```bash
rm -rf ~/.config/btop && \
ln -s ~/.dotfiles/.config/btop ~/.config/btop
```

### Configuración de Elephant e Walker:

```bash
rm -rf ~/.config/elephant ~/.config/walker && \
ln -s ~/.dotfiles/.config/elephant ~/.config/elephant && \
ln -s ~/.dotfiles/.config/walker ~/.config/walker
```

### Configuración de SwayNC

```bash
rm -rf ~/.config/swaync && \
ln -s ~/.dotfiles/.config/swaync ~/.config/swaync
```

### Configuración de de Hyprland, Hypridle e Hyprlock:

```bash
rm -rf ~/.config/hypr && \
ln -s ~/.dotfiles/.config/hypr ~/.config/hypr && \
mkdir -p ~/.config/hypr/custom/hyprland && \
touch ~/.config/hypr/custom/hyprland/autostart.conf ~/.config/hypr/custom/hyprland/envs.conf ~/.config/hypr/custom/hyprland/input.conf ~/.config/hypr/custom/hyprland/keybindings-mod.conf ~/.config/hypr/custom/hyprland/keybindings.conf ~/.config/hypr/custom/hyprland/look-and-feel.conf ~/.config/hypr/custom/hyprland/monitors.conf ~/.config/hypr/custom/hyprland/perms.conf ~/.config/hypr/custom/hyprland/windows.conf ~/.config/hypr/custom/hyprland/workspaces.conf ~/.config/hypr/colors.conf
```

### Configuración de Matugen:

> ℹ️ Podes cambiar `~/.dotfiles/wallpaper.jpg` pola ruta do teu wallpaper preferido

```bash
rm -rf ~/.config/matugen && \
ln -s ~/.dotfiles/.config/matugen ~/.config/matugen && \
wallpaper ~/.dotfiles/wallpaper.jpg
```

## Personalización

Os meus dotfiles están pensados para ser usados sin modificación algunha pero podes modifcar o que desexes. O problema de modifcar muitas cousas e que cando actualices a futuros posiblemente falle ou perdas cambios.

Aquí deixo unha lista de cousas que si que se poden modificar sin problemas.

### Cambial fondo de pantalla e tema de cor

O tema de cor cambia automaticamente co fondo de pantalla. Cando seleccionas un novo fondo preguntaráseche cal das cores dunha lista queres usar como tema.

Podes cambialo desde Yazi con `Ctrl + O` -> `Establecer como fondo de pantalla` estando sobre unha imaxe con formato `jpg`, `jpeg`, `png`, `gif` ou `webp` ou co seguinte comando:

```bash
wallpaper ~/ruta/ao/wallpaper.xxx
```

### Modificar/extender as configuracións de Hyprland

Dentro de `~/.config/hypr/custom/hyprland/...` poderás atopar arquivos para modificar practicamente todo o relacionado con Hyprland.

### Modificar/extender o `.bashrc`

O `.bashrc` é intocable xa que este se encarga de cargar as configuracións importantes dos dotfiles e as configuracións personalizadas.

Para modificalo podes editar o `~/.bashrc_cusrom` ou crear arquivos co nome `XX-nome` en `~/.config/bashrc/custom/...`.

Se queres que Visual Studio Code mostre todo ben ao editar estes documentos engade `# shellcheck shell=bash` arriba de todo en cada un deles.
