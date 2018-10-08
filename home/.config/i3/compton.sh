#!/usr/bin/env bash

# Terminate already running bad instances
killall -q compton

# Wait until the processes have been shut down
while pgrep -x compton > /dev/null; do sleep 1; done

# Launch compton daemon
compton -b

