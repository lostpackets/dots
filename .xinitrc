#!/bin/bash
# bind '"\C-F":"f\n"'
xrdb -I$HOME ~/.Xresources
/bin/bash -c ~/swap_colon_semicolon.sh
# /bin/bash -c ~/ctrl_f_fzf.sh
 # bind -x '"\C-f":"f"'

 # might not need to swap colon and semicolon when i have shift_lock on esc.
xmodmap -e "keycode 47 = colon semicolon"
# xmodmap -e "keycode 47 = colon semicolon"
# numpad 1-3
xmodmap -e "keycode 87 = F13"|xmodmap -e "keycode 88 = F14"
xmodmap -e "keycode 89 = F15"

# modmaps caps_lock to shift_lock (for symbols)
# if i could just figure out how to combine shiftlock and capslock that'd be great...
# escape to shift lock, but that's way too slow
# xmodmap  -e "keycode 9 = Shift_Lock"
# right shift to shift lock
# xmodmap  -e "keycode 37 = Shift_Lock"
xmodmap  -e "keycode 62 = Shift_Lock"
# symbols (+shift) -> regular symbols no shift
# switches ( with 9
# xmodmap -e "keycode 18 = parenleft 9"|xmodmap -e "keycode 19 = parenright 0"|xmodmap -e "keycode 21 = equal plus"|xmodmap -e "keycode 20 = underscore minus"|xmodmap -e "keycode 34 = bracketleft braceleft"|xmodmap -e "keycode 51 = bar backslash"|xmodmap -e "keycode 48 = quotedbl apostrophe"|xmodmap -e "keycode 59 = less comma"|xmodmap -e "keycode 13 = dollar 4"|xmodmap -e "keycode 14 = percent 5"|xmodmap -e "keycode 11 = at 2"|xmodmap -e "keycode 16 = ampersand 7"|xmodmap -e "keycode 10 = exclam 1"|xmodmap -e "keycode 13 = numbersign 3"|xmodmap -e "keycode 17 = asterisk 8"
# switches dollar with 4


# default mappings for symbols
# switches ( with 9
# xmodmap -e "keycode 18 = 9 parenleft"
# xmodmap -e "keycode 19 = 0 parenright"
# xmodmap -e "keycode 21 = plus equal"
# xmodmap -e "keycode 20 = minus underscore"
# xmodmap -e "keycode 34 = braceleft bracketleft"
# xmodmap -e "keycode 51 = backslash bar"
# xmodmap -e "keycode 48 = apostrophe quotedbl"
# xmodmap -e "keycode 59 = comma less"
# # switches dollar with 4
# xmodmap -e "keycode 13 = 4 dollar"
# xmodmap -e "keycode 14 = 5 percent"
# xmodmap -e "keycode 11 = 2 at"
# xmodmap -e "keycode 16 = 7 ampersand"
# xmodmap -e "keycode 10 = 1 exclam"
# xmodmap -e "keycode 13 = 3 numbersign"
# xmodmap -e "keycode 17 = 8 asterisk"

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

