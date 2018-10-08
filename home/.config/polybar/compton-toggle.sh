#!/bin/sh

if systemctl is-active --user --quiet compton; then
  systemctl stop --user compton
else
  systemctl start --user compton
fi
