#!/bin/bash

## shutdown menu Void linux

MENU="$(rofi -sep "|" -dmenu -i -p 'System' -width 12 -hide-scrollbar -line-padding 4 -padding 20 -lines 4 -font "Misc Termsyn 12" <<< "Lock|Logout|Reboot|Shutdown")"

case "$MENU" in
    *Lock) i3lock ;;
    *Logout) i3-msg exit ;;
    *Reboot) sudo shutdown -r now ;;
    *Shutdown) sudo shutdown -P now ;;
esac

