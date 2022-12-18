#!/bin/bash

xrdb -I$HOME ~/.Xresources
/bin/bash -c ~/swap_colon_semicolon.sh
# /bin/bash -c ~/ctrl_f_fzf.sh
 # bind -x '"\C-f":"f"'
xmodmap -e "keycode 47 = colon semicolon"
xmodmap -e "keycode 47 = colon semicolon"
# numpad 1-3
xmodmap -e "keycode 87 = F13"
xmodmap -e "keycode 88 = F14"
xmodmap -e "keycode 89 = F15"
# made this keymapping because I hit the comma key more than the period key by accident
# replaces comma with period
# xmodmap -e "keycode 59 = period comma"
# # replaces comma with period
# xmodmap -e "keycode 60 = comma period"
# librewolf
# vlc

# remap the angled brackets > <

# xmodmap -e "keycode 59 = less greater"
# # replaces comma with period
# xmodmap -e "keycode 60 = greater less"

