#!/usr/bin/env bash
setup-xorg-base || true
apk add plasma kde-applications-base
apk add elogind polkit-elogind dbus wpa_supplicant
echo -e "live\nlive\n" | passwd root
echo -e "live\nlive\n" | adduser user || true
rc-update add dbus
rc-update add networkmanager
rc-update add wpa_supplicant
rc-update add sddm
rc-update add udev
rc-update add elogind
