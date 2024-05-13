#!/usr/bin/env bash

da() {
  current_date_time="$(date "+%Y-%m-%d %H:%M")";
  echo $current_date_time
  dunstify -a "Time" "   $current_date_time" -h string:x-dunst-stack-tag:Time -t 2000
}

ti() {
  current_date_time="$(date "+%H:%M")";
  dunstify -a "Time" "   $current_date_time" -h string:x-dunst-stack-tag:Time -t 2000
}

case "$1" in 
  ti) ti;;
  da) da;;
esac
