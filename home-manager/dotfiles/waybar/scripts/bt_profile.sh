#!/bin/bash

# Replace with your Bluetooth card name
BLUETOOTH_CARD=$(pactl list cards short | grep bluez_card | awk '{print $2}')

# Check the current profile
CURRENT_PROFILE_A2DP_SINK=$(pactl list cards | grep -A 20 "$BLUETOOTH_CARD" | grep "Active Profile.*a2dp-sink" | wc -l)
CURRENT_PROFILE_MSBC=$(pactl list cards | grep -A 20 "$BLUETOOTH_CARD" | grep "Active Profile.*headset-head-unit" | wc -l)

# Define the profiles
A2DP_PROFILE="a2dp-sink"
HSP_PROFILE="headset-head-unit"

# Toggle the profile
if [ "$CURRENT_PROFILE_A2DP_SINK" == "1" ]; then
    echo "A2DP"
else
    echo "mSBC"
fi

