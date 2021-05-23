# keyboard layout
  setxkbmap br &

# display resolution

# single monitor
# xrandr --output eDP --scale 1.405563689x1.40625 --panning 1920x1080 &

# dual monitor
  xrandr --output HDMI-A-0 --rotate right
  xrandr --output eDP --scale 1.405563689x1.40625 --panning 1920x1080+1280+0

# Scripts
  ~/Scripts/fehbg &
  ~/Scripts/keyspeed &
  ~/Scripts/sshagent &

# unclutter
  unclutter --timeout 1 &

# picom
  picom &

# dwm-bar
 /usr/src/dwm-bar/dwm_bar.sh & 

# execute dwm
  exec dwm
