#!/usr/bin/env bash

notify_brightness() {
  local brightness_icon
  local brightness=$1

  if [ "$brightness" -eq 100 ]; then
    brightness_icon="󰃠 "
  elif [ "$brightness" -ge 70 ]; then
    brightness_icon="󰃝 "
  elif [ "$brightness" -ge 35 ]; then
    brightness_icon="󰃟 "
  else
    brightness_icon="󰃞 "
  fi

  dunstify -a "BACKLIGHT" " $brightness_icon Brightness " " $brightness%" -h string:x-dunst-stack-tag:BACKLIGHT -t 1000
}

adjust_brightness() {
  local adjustment=$1
  brightnessctl s "$adjustment"
  local brightness_raw=$(brightnessctl get)
  local brightness=$(awk "BEGIN { printf \"%.0f\", $brightness_raw / 960  }")

  notify_brightness "$brightness"
}

case "$1" in
  up) adjust_brightness 5%+;;
  down) adjust_brightness 5%-;;
esac

