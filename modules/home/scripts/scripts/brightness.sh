#!/usr/bin/env bash
up() {
  brightnessctl s 5%+
  brightness_raw=$(brightnessctl get)
  brightness="$( expr $brightness_raw / 960 )"
  if [$(bc <<< "$brightness == 100") -eq 1]
  then
    dunstify -a "BACKLIGHT" " 󰃠 Brightness " " $brightness% " -h string:x-dunst-stack-tag:BACKLIGHT -t 1000
  elif [ $(bc <<< "$brightness >= 70 ") -eq 1 ]
  then
    dunstify -a "BACKLIGHT" " 󰃝 Brightness " " $brightness% " -h string:x-dunst-stack-tag:BACKLIGHT -t 1000
  elif [ $(bc <<< "$brightness >= 40 ") -eq 1 ]
  then
    dunstify -a "BACKLIGHT" " 󰃝 Brightness " " $brightness% " -h string:x-dunst-stack-tag:BACKLIGHT -t 1000
  else 
    dunstify -a "BACKLIGHT" " 󰃞 Brightness " " $brightness% " -h string:x-dunst-stack-tag:BACKLIGHT -t 1000
  fi
}

down() {
  brightnessctl s 5%-
  brightness_raw=$(brightnessctl get)
  brightness="$( expr $brightness_raw / 960 )"
  if [$(bc <<< "$brightness == 100") -eq 1]
  then
    dunstify -a "BACKLIGHT" " 󰃠 Brightness " " $brightness% " -h string:x-dunst-stack-tag:BACKLIGHT -t 1000
  elif [ $(bc <<< "$brightness >= 70 ") -eq 1 ]
  then
    dunstify -a "BACKLIGHT" " 󰃝 Brightness " " $brightness% " -h string:x-dunst-stack-tag:BACKLIGHT -t 1000
  elif [ $(bc <<< "$brightness >= 40 ") -eq 1 ]
  then
    dunstify -a "BACKLIGHT" " 󰃟 Brightness " " $brightness% " -h string:x-dunst-stack-tag:BACKLIGHT -t 1000
  else 
    dunstify -a "BACKLIGHT" " 󰃞 Brightness " " $brightness% " -h string:x-dunst-stack-tag:BACKLIGHT -t 1000
  fi
}

case "$1" in 
  up) up;;
  down) down;;
esac

