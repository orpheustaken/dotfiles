#!/bin/sh

printf '\n'

echo 'Fetching the most optimized https mirrors... This might take a while.'

2>/dev/null 1>/dev/null \
sudo reflector \
--latest 10 \
--protocol https \
--sort rate \
--save /etc/pacman.d/mirrorlist

printf '\n'

echo 'New mirrorlist saved in /etc/pacman.d/mirrorlist.'

printf '\n'

echo 'Synchronizing packages, refreshing database and updating packages...'

printf '\n'

sudo pacman -Syyu --noconfirm

printf '\n'

echo 'Done.'

