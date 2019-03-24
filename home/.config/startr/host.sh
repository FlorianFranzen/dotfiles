#!/usr/bin/env bash

# Host name based startup script

HOSTNAME=$(hostname -s)
SCRIPT=~/.config/startr/$HOSTNAME.sh

if [ -f $SCRIPT ]; then
  $SCRIPT
else
  echo "Startr script for host '$HOSTNAME' does not exist."
fi
