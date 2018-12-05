function VGAConnected {
    xrandr | grep "DP1 connected"
}

if VGAConnected
then
    xrandr --output eDP1 --auto --output DP1 --auto --left-of eDP1
else
    xrandr --output DP1 --off
fi
