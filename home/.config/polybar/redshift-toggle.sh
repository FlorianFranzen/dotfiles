#!/bin/sh

if systemctl is-active --user --quiet redshift; then
  systemctl stop --user redshift
else
  systemctl start --user redshift
fi
