#!/usr/bin/env bash

date() {
  current_date_time="`date "+%Y-%m-%d %H:%M"`";
  dunstify "   $current_date_time" -r 91190 -t 1000
}
time() {
  current_date_time="`date "%H:%M"`";
  dunstify "   $current_date_time" -r 91190 -t 1000
}
case "$1" in 
  time) time;;
  date) date;;
esac
