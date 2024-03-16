#!/usr/bin/env bash
apk update
apk upgrade
setup-xorg-base || true
apk add nano firefox
apk add xfce4 xfce4-terminal xfce4-screensaver lightdm-gtk-greeter adwaita-icon-theme pavucontrol
apk add elogind polkit-elogind dbus wpa_supplicant networkmanager network-manager-applet pulseaudio pulseaudio-alsa
# apps
apk add flatpak
# flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo -e "live\nlive\n" | passwd root
rc-update add dbus
rc-update add networkmanager
rc-update add wpa_supplicant
rc-update add lightdm
rc-update add udev
rc-update add elogind
# laptop stuff
apk add acpi cpufreqd pm-utils
rc-update add cpufreqd
