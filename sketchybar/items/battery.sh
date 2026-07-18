#!/usr/bin/env sh

source "$CONFIG_DIR/variables.sh"

sketchybar --add item battery right
sketchybar --subscribe battery system_woke power_source_change
sketchybar --set battery \
	icon.padding_right=$SPACING_SM \
	update_freq=120 \
	script="$PLUGINS_DIR/battery.sh"
