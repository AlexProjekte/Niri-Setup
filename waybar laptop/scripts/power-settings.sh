#!/bin/bash
options="Action\nBalanced\nPower saving mode\nSettings"
chosen=$(echo -e "$options" | wofi --dmenu --sort-order=alphabetical --prompt "Energieprofil" --width 300 --height 200)

case $chosen in
  "Action")        powerprofilesctl set performance;;
  "Balanced")    powerprofilesctl set balanced;;
  "Power saving mode")   powerprofilesctl set power-saver;;
  "Settings")   lxqt-config-powermanagement;;
  *)                 exit 1 ;;
esac
