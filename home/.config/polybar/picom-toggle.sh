#!/bin/sh

if systemctl is-active --user --quiet picom; then
  systemctl stop --user picom
else
  systemctl start --user picom
fi
