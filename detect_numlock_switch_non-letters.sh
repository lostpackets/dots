#!/bin/bash

# Check if numlock is pressed
numlock_status=$(xset -q | awk '/Num/{print $8}')

if [ "$numlock_status" == "off" ]; then
    echo "Numlock is not pressed. Switching symbols back."
    # Switch symbols back to non-shifted versions
    xmodmap -e "keysym 1 = 1 exclam"
    xmodmap -e "keysym 2 = 2 at"
    xmodmap -e "keysym 3 = 3 numbersign"
    xmodmap -e "keysym 4 = 4 dollar"
    xmodmap -e "keysym 5 = 5 percent"
    xmodmap -e "keysym 6 = 6 asciicircum"
    xmodmap -e "keysym 7 = 7 ampersand"
    xmodmap -e "keysym 8 = 8 asterisk"
    xmodmap -e "keysym 9 = 9 parenleft"
    xmodmap -e "keysym 0 = 0 parenright"
    xmodmap -e "keysym semicolon = semicolon colon"
    xmodmap -e "keysym equal = equal plus"
    # xmodmap -e "keysym comma = comma less"
    xmodmap -e "keysym period = period greater"
    xmodmap -e "keysym slash = slash question"
    xmodmap -e "keysym backslash = backslash bar"
else
    echo "Numlock is pressed. Switching symbols to shifted versions."
    # Switch symbols to shifted versions
    xmodmap -e "keysym 1 = exclam 1"
    xmodmap -e "keysym 2 = at 2"
    xmodmap -e "keysym 3 = numbersign 3"
    xmodmap -e "keysym 4 = dollar 4"
    xmodmap -e "keysym 5 = percent 5"
    xmodmap -e "keysym 6 = asciicircum 6"
    xmodmap -e "keysym 7 = ampersand 7"
    xmodmap -e "keysym 8 = asterisk 8"
    xmodmap -e "keysym 9 = parenleft 9"
    xmodmap -e "keysym 0 = parenright 0"
    xmodmap -e "keysym semicolon = colon semicolon"
    xmodmap -e "keysym equal = plus equal"
    # xmodmap -e "keysym comma = less comma"
    xmodmap -e "keysym period = greater period"
    xmodmap -e "keysym slash = question slash"
    xmodmap -e "keysym backslash = bar backslash"
fi

