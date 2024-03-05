#!/usr/bin/env bash

testrr=$(nix eval nixpkgs#polkit_gnome.outPath --raw)
testt=$testrr/libexec/polkit-gnome-authentication-agent-1

$testt
 #echo $testt
