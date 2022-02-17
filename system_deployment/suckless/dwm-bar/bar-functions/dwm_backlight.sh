#!/bin/sh

# A dwm_bar module to display the current backlight brightness with xbacklight
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xbacklight

dwm_backlight () {
    printf "%.0f%s%%\n" "$(xbacklight -get)"
}

dwm_backlight

