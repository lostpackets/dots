#!/bin/bash

xrdb -I$HOME ~/.Xresources

# autostart sxhkd & or chords
sxhkd -c $HOME/.config/sxhkd/sxhkdrc &



# this binds ctrl f to fzf
# bind '"\C-F":"f\n"'

xset r rate 360 57
bash ~/.xinitrc
setxkbmap -option caps:swapescape

# xmodmap must always use quotes unlike setxkbmap
xmodmap -e "keycode 47 = colon semicolon"
# numpad keys
xmodmap -e "keycode 87 = F13"|xmodmap -e "keycode 88 = F14"
xmodmap -e "keycode 89 = F15"
# R-shift to shift_lock
# Now unused because it is assigned in xdotool + sxhkd


# temporarily off because of sxhkd
# xmodmap  -e "keycode 62 = Shift_Lock"


# xmodmap  -e "keycode 62 = Shift_R"


