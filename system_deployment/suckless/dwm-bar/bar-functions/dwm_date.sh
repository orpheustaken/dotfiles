#!/bin/sh

# A dwm_bar function that shows the current date and time
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# See strftime()

dwm_date () {
    printf "%s" "$(date "+%a %d %l:%M %p")"
}

dwm_date

