#!/bin/bash

#echo space.sh $'FOCUSED_WORKSPACE': $FOCUSED_WORKSPACE, $'SELECTED': $SELECTED, NAME: $NAME, SENDER: $SENDER  >> ~/aaaa

update() {
  if [ "$SENDER" = "space_change" ]; then

    source "$CONFIG_DIR/colors.sh"
    COLOR=$BACKGROUND_2
    if [ "$SELECTED" = "true" ]; then
      COLOR=$COLOR2
    fi

    sketchybar --set space.$(aerospace list-workspaces --focused) icon.highlight=true \
      label.highlight=true \
      background.border_color=$COLOR2
  fi
}

set_space_label() {
  sketchybar --set $NAME icon="$@"
}

case "$SENDER" in
"mouse.clicked") ;;
*)
  update
  ;;
esac
