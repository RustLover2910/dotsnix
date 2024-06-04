#!/usr/bin/env sh

get_volume() {
wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>&1
}

# Extract volume percentage from the output
extract_volume() {
  echo "$1" | grep -oP '\d+(\.\d+)?' | awk '{print int($1 * 100)}'
}

notify_volume() {
  local volume=$1
  if [ $volume -ge 50 ]
  then
    dunstify -a "VOLUME" "   Volume" " ${volume}% " -h string:x-dunst-stack-tag:VOLUME -t 1000
  else
    dunstify -a "VOLUME" "   Volume" " ${volume}% " -h string:x-dunst-stack-tag:VOLUME -t 1000
  fi
}

notify_mute() {
  local status=$1
  dunstify -a "VOLUME" "$status" -h string:x-dunst-stack-tag:VOLUME -t 1000
}

# Increase volume
up() {
  volume=$(extract_volume "$(get_volume)")
  if [ $volume -ge 100 ]; then
    notify_volume "$volume"
  else
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
    volume=$(extract_volume "$(get_volume)")
    notify_volume "$volume"
  fi
}

# Decrease volume
down() {
  volume=$(extract_volume "$(get_volume)")
  if [ $volume -e 0 ]
  then
    notify_mute "   Muted"
  elif [ $volume -le 5 ]
  then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 0%
    notify_mute "   Muted"
  else
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
    volume=$(extract_volume "$(get_volume)")
    notify_volume "$volume"
  fi
}

# Toggle mute
mute() {
  mute_status=$(get_volume)
  if echo "$mute_status" | grep -q "[MUTED]"; then
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    notify_mute "   Unmuted"
  else
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
    notify_mute "   Muted"
  fi
}

# Handle script arguments
case "$1" in
  up) up;;
  down) down;;
  mute) mute;;
  *) echo "Usage: $0 {up|down|mute}"; exit 1;;
esac
