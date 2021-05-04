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
        elif [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
            printf " %s" "$VOL"
        elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
            printf " %s" "$VOL"
        else
            printf " %s" "$VOL"
        fi
}

dwm_pulse
