#!/bin/sh

# A modular status bar for dwm
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xorg-xsetroot

# Store the directory the script is running from
LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")

# Change the appearance of the module identifier. If this is set to "unicode", then symbols will be used as identifiers instead of text. E.g. [📪 0] instead of [MAIL 0].
# Requires a font with adequate unicode character support
export IDENTIFIER="unicode"

# Change the character(s) used to seperate modules. If two are used, they will be placed at the start and end.
export SEP1=" "
export SEP2="  "

# Import the modules
. "$DIR/bar-functions/dwm_resources.sh"
. "$DIR/bar-functions/dwm_backlight.sh"
. "$DIR/bar-functions/dwm_pulse.sh"
. "$DIR/bar-functions/dwm_date.sh"

# Update dwm status bar every second
while true
do
    # Append results of each function one by one to a string
    dispstr=""
    dispstr="$dispstr$SEP1"
    dispstr="$dispstr$(dwm_resources)"
    dispstr="$dispstr$SEP2"
    dispstr="$dispstr$(dwm_backlight)"
    dispstr="$dispstr$SEP2"
    dispstr="$dispstr$(dwm_pulse)"
    dispstr="$dispstr$SEP2"
    dispstr="$dispstr$(dwm_date)"
    dispstr="$dispstr$SEP1"

    # Display string
    xsetroot -name "$dispstr"
    sleep 1
done

