#!/bin/bash

calendar=(
  label.align=center
  update_freq=30
  label.padding_left=8
  label.padding_right=10
  padding_left=2
  padding_right=2
  background.color=$BACKGROUND_1
  background.border_color=$BORDER_COLOR
  script="$PLUGIN_DIR/calendar.sh"
  click_script="$PLUGIN_DIR/zen.sh"
)

sketchybar --add item calendar right \
  --set calendar "${calendar[@]}" \
  --subscribe calendar system_woke
