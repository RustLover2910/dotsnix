#!/usr/bin/env bash

hypr=$(nix eval nixpkgs#xdg-desktop-portal-hyprland.outPath --raw)
gtk=$(nix eval nixpkgs#xdg-desktop-portal-gtk.outPath --raw)

sleep 1
killall -e xdg-desktop-portal-hyprland
killall -e xdg-desktop-portal-wlr
killall xdg-desktop-portal
$hypr/libexec/xdg-desktop-portal-hyprland &
sleep 2
$gtk/lib/xdg-desktop-portal-gtk &
