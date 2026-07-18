#!/usr/bin/env sh

source "$CONFIG_DIR/variables.sh"

sketchybar --add item clock right
sketchybar --set clock \
	update_freq=10 \
	padding_left=$ITEMS_SPACING \
	script="$PLUGINS_DIR/clock.sh"
