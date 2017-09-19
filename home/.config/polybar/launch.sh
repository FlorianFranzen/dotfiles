# Basic script to kill all old bars and launch new.

# Terminate already running bad instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch all polybars
polybar full &
sleep 1
polybar top &
polybar bottom &