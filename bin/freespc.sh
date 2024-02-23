#!/usr/bin/env bash
echo ""
echo "Before:"
df -h /

echo ""
echo "Cleaning ~/.cache..."
rm -rf ~/.cache/yay
rm -rf ~/.cache/yarn
rm -rf ~/.cache/paru
rm -rf ~/.cache/mozilla
rm -rf ~/.cache/electron
rm -rf ~/.cache/google-chrome
rm -rf ~/.cache/chromium
rm -rf ~/.cache/epiphoany
rm -rf ~/.cache/thumbnails
rm -rf ~/.cache/trarcker3
rm -rf ~/.cache/gnome-software
rm -rf ~/.cache/ms-playwright
rm -rf ~/.cache/cliphist
rm -rf ~/.cache/node
rm -rf ~/.cache/node-gyp
rm -rf ~/.cache/plasmashell

echo ""
echo "Running 'docker system prune':"
docker system prune

echo ""
echo "Cleaning pacman cache:"
sudo paccache -r

echo ""
echo "After:"
df -h /
