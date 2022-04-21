#!/bin/sh

# Take a screenshot of a selection area, save it as YYYY-MM-DD_HH:MM:SS.png and automatically copy into clipboard.

# Dependencies: scrot, xclip
# References: man scrot, strftime()

scrot -q 100 -s -d 1 $HOME/Documents/Images/Screenshots/%F_%T.png -e 'xclip -selection clipboard -t image/png -i $f'

