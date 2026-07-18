#!/usr/bin/env sh

source "$CONFIG_DIR/variables.sh"

sketchybar --add event aerospace_workspace_change
MAX_SLOTS=10

for sid in $(aerospace list-workspaces --all); do
	sketchybar --add item "space.$sid" left \
		--subscribe "space.$sid" aerospace_workspace_change
	# --subscribe "space.$sid" front_app_switched

	# All except the first one have left spacing
	if [ $sid -ge 2 ]; then
		sketchybar --set "space.$sid" \
			background.padding_left=$SPACING_LG
	fi

	sketchybar --set "space.$sid" \
		label="$sid" \
		label.padding_right=$SPACING_XS \
		script="$PLUGINS_DIR/aerospace.sh $sid"

	slot=1
	while [ $slot -le $MAX_SLOTS ]; do
		sketchybar --add item "space.$sid.win.$slot" left

		sketchybar --set "space.$sid.win.$slot" \
			icon.padding_right=$SPACING_XS \
			icon.padding_left=$SPACING_XS \
			drawing=off \
			icon.drawing=off \
			background.drawing=off \
			label.drawing=off

		slot=$((slot + 1))
	done
done

# sketchybar --trigger aerospace_workspace_change \
# 	FOCUSED_WORKSPACE="$(aerospace list-workspaces --focused 2>/dev/null)"
