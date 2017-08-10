#!/bin/bash

OPTIONS="Exit window manager\nReboot system\nShutdown system\nSuspend system\nHibernate system"

LAUNCHER="rofi -color-enabled -dmenu -i -p power:"
LOCKER="~/.config/i3/lock.sh"

SELECTION=$(echo -e $OPTIONS | $LAUNCHER | cut -f1 -d" " | tr -d '\r\n')
if [ ${#SELECTION} -gt 0 ]
then
    case $SELECTION in
      Exit)
        i3-msg exit
        ;;
      Reboot)
        systemctl reboot
        ;;
      Shutdown)
        systemctl poweroff
        ;;
      Suspend)
        "$LOCKER"; systemctl suspend
        ;;
      Hibernate)
        "$LOCKER"; systemctl hibernate
        ;;
      *)
        ;;
    esac
fi
