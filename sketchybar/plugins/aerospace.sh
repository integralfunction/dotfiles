#!/bin/bash
source "$CONFIG_DIR/variables.sh"

SID=$1
MAX_SLOTS=10

if [ -z "$FOCUSED_WORKSPACE" ]; then
	FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused 2>/dev/null)
fi

# echo "$SID"
# echo "$FOCUSED_WORKSPACE"

apps=()
while IFS= read -r line; do
	apps+=("$line")
done < <(aerospace list-windows --workspace "$SID" --format '%{app-name}' 2>/dev/null | sort)

if [ "$SID" = "$FOCUSED_WORKSPACE" ]; then
	col=$ICON_ACTIVE
else
	col=$ICON_INACTIVE
fi

sketchybar --set "space.$SID" label.color=$col

slot=1
while [ $slot -le $MAX_SLOTS ]; do
	idx=$((slot - 1))
	app="${apps[$idx]:-}"
	# echo "$app"
	item="space.$SID.win.$slot"
	if [ -n "$app" ]; then
		icon=$("$PLUGINS_DIR/icon_map.sh" "$app")
		sketchybar --set "$item" \
			icon="$icon" \
			icon.color=$col \
			drawing=on \
			icon.drawing=on \
			background.drawing=on
	else
		sketchybar --set "$item" \
			drawing=off \
			icon.drawing=off \
			background.drawing=off

	fi
	slot=$((slot + 1))
done
