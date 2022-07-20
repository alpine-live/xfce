#!/usr/bin/env bash
apk update
apk upgrade
setup-xorg-base || true
apk add nano firefox
apk add plasma kde-applications-base networkmanager-wifi networkmanager-tui
apk add elogind polkit-elogind dbus wpa_supplicant
echo -e "live\nlive\n" | passwd root
echo -e "live\nlive\n" | adduser user || true
rc-update add dbus
rc-update add networkmanager
rc-update add wpa_supplicant
rc-update add sddm
rc-update add udev
rc-update add elogind
