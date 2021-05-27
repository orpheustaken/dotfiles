#!/bin/sh

# A dwm_bar function to show the master volume of PulseAudio
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: pamixer

dwm_pulse () {
    VOL=$(pamixer --get-volume-human)
    
    printf "%s" "$SEP1"
        if [ "$VOL" = "muted" ] || [ "$VOL" -eq 0 ]; then
            printf ""
        else
            printf " %s" "$VOL"
        fi
}

dwm_pulse
