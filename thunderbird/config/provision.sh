#!/bin/sh

sudo apt-get update

sudo apt-get install -y \
	gnupg \
	enigmail \
	libcanberra-gtk-module \
	libcanberra-gtk3-module \
	thunderbird \
	thunderbird-l10n-en-gb \
	xauth

LOCALE="en_GB.UTF-8"

# Set which locale to generate
# https://wiki.debian.org/Locale
echo "${LOCALE} UTF-8" | tee /etc/locale.gen
locale-gen

# Set the first day of the week, paper size and measurement units:
echo "LC_TIME=\"${LOCALE}\"" | tee /etc/default/locale
echo "LC_PAPER=\"${LOCALE}\"" | tee -a /etc/default/locale
echo "LC_MEASUREMENT=\"${LOCALE}\"" | tee -a /etc/default/locale
