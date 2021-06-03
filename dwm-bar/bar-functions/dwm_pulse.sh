#!/bin/sh

# A dwm_bar function to show the master volume of PulseAudio
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: pamixer

dwm_pulse () {
    VOL=$(pamixer --get-volume-human)
    
    printf "%s%.0f%s%%\n" "$SEP1" "$VOL"
}

dwm_pulse
