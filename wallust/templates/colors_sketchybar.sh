#!/bin/bash

### Wallust
export COLOR0=0xff{{color0 | strip}}
export COLOR1=0xff{{color1 | strip}}
export COLOR2=0xff{{color2 | strip}}
export COLOR3=0xff{{color3 | strip}}
export COLOR4=0xff{{color4 | strip}}
export COLOR5=0xff{{color5 | strip}}
export COLOR6=0xff{{color6 | strip}}
export COLOR7=0xff{{color7 | strip}}
export TRANSPARENT=0x00000000

export BG0=0xff{{foreground | strip}}
export BG1=0xff{{background | strip}}
export BG2=0xff{{background | strip}}


export BATTERY_1=0xff{{color1 | lighten(0.25) | strip}} 
export BATTERY_2=0xff{{color1 | lighten(0.35) | strip}}
export BATTERY_3=0xff{{color1 | lighten(0.50) | strip}}
export BATTERY_4=0xff{{color1 | lighten(0.75) | strip}}
export BATTERY_5=0xff{{color1 | strip}}

# General bar colors
export BAR_COLOR=$BG0
export BORDER_COLOR=$COLOR1

export BAR_BORDER_COLOR=$BG2
export BACKGROUND_1=$BG1
export BACKGROUND_2=$BG2

export ICON_COLOR=$COLOR5  # Color of all icons
export LABEL_COLOR=$COLOR5 # Color of all labels

export POPUP_BACKGROUND_COLOR=$BAR_COLOR
export POPUP_BORDER_COLOR=$COLOR1

export SHADOW_COLOR=$COLOR0
