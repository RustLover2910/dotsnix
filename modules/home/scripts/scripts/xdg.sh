#!/usr/bin/env bash

#hypr=$(nix eval nixpkgs#xdg-desktop-portal-hyprland.outPath --raw)/libexec/xdg-desktop-portal-hyprland
#gtk=$(nix eval nixpkgs#xdg-desktop-portal-gtk.outPath --raw)/libexec/xdg-desktop-portal-gtk
#port=$(nix eval nixpkgs#xdg-desktop-portal.outPath --raw)/libexec/xdg-desktop-portal

#sleep 1
#pkill $hypr
#pkill $port
#sleep 1
$hypr &
sleep 1
$port
sleep 1
$gtk
systemctl --user import-environment PATH
systemctl --user restart xdg-desktop-portal.service
