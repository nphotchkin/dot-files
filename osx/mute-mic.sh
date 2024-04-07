#!/bin/bash

# Get the current input volume level
current_volume=$(osascript -e "input volume of (get volume settings)")

# If the current volume is not 0, set it to 0 (mute), otherwise set it to 100
if [ $current_volume -ne 0 ]; then
    osascript -e "set volume input volume 0"
    echo "Microphone muted"
else
    osascript -e "set volume input volume 100"
    echo "Microphone unmuted"
fi
