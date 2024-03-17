#!/usr/bin/env bash
apk update
apk upgrade
#x11
apk add xorg-server xf86-input-libinput eudev mesa-dri-gallium
# xfce
apk add nano firefox
apk add xfce4 xfce4-terminal xfce4-screensaver lightdm-gtk-greeter adwaita-icon-theme pavucontrol
# logind and other stuff
apk add elogind polkit-elogind dbus wpa_supplicant networkmanager \
    bluez networkmanager-wifi networkmanager-tui librsvg fuse
# pipewire
apk add wireplumber pipewire pipewire-pulse pipewire-alsa pipewire-spa-bluez \
    pipewire-jack pipewire-spa-tools
echo -e "live\nlive\n" | passwd root
rc-update add dbus
rc-update add networkmanager
rc-update add wpa_supplicant
rc-update add lightdm
rc-update add udev
rc-update add elogind
