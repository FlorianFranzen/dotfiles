#!/bin/sh

if pgrep -x "redshift" > /dev/null
then
  killall redshift
else
  setsid redshift >/dev/null 2>&1 < /dev/null &
fi
