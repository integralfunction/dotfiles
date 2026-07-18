#!/usr/bin/env sh

source "$CONFIG_DIR/variables.sh"

sketchybar --add item volume right
sketchybar --subscribe volume volume_change
sketchybar --set volume \
	padding_left=$ITEMS_SPACING \
	icon.padding_right=$SPACING_SM \
	script="$PLUGINS_DIR/volume.sh"
