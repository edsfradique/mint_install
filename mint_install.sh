#!/bin/bash

# Atualizar e instalar pacotes
apt --install-recommends --force-yes -y install linuxmint-keyring debian-system-adjustments && \
apt update && \
apt --install-recommends --force-yes -y install mint-meta-cinnamon cinnamon cinnamon-l10n cinnamon-desktop-data mint-common lightdm-settings mintlocale mintmenu mintsystem mintupdate mintwelcome mint-mirrors mint-translations mint-themes mintinstall mint-backgrounds-uma mint-backgrounds-una mint-backgrounds-ulyssa mintstick muffin nemo nemo-emblems nemo-preview nemo-share mint-meta-codecs timeshift xreader boot-repair timeshift synaptic numlockx software-properties-common software-properties-gtk slick-greeter gnome-terminal gnome-font-viewer gnome-calendar gnome-calculator gnome-menus gnome-power-manager firefox bulky caribou gdebi onboard redshift sticky thingy webapp-manager xapp-appimage-thumbnailer xapp-epub-thumbnailer xapp-mp3-thumbnailer xapp-raw-thumbnailer xreader xviewer xviewer-plugins acpi-support acpid alsa-utils anacron apt-clone avahi-utils avahi-autoipd baobab build-essential cups cups-browsed fuse3 lintian && \
apt -y install cinnamon-desktop-environment
