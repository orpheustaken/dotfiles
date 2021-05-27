# keyboard layout
  setxkbmap br &

# display resolution

# single monitor
  xrandr --output eDP --scale 1.405563689x1.40625 --panning 1920x1080 &

# dual monitor
# xrandr --output HDMI-A-0 --rotate right
# xrandr --output eDP --scale 1.405563689x1.40625 --panning 1920x1080+1280+0

# wallpaper
  feh --no-fehbg --bg-fill '/home/user/Documents/Images/wallpaper.png' &

# increase speed when holding a key
  xset r rate 300 50 &

# ssh agent
  eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519 &

# unclutter
  unclutter --timeout 1 &

# picom
  picom &

# dwm-bar
 /usr/src/dwm-bar/dwm_bar.sh & 

# execute dwm
  exec dwm
