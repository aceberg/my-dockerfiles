#!/bin/sh

SINGBOX_CONF="${SINGBOX_CONF:-/data/sing-box.json}"
HID_CONF="${HID_CONF:-/data/current-config.json}"
HID_OPT="${HID_OPT:-/data/options.json}"

started=0

if [ -f "$HID_CONF" ] && [ -f "$HID_OPT" ]; then
    echo "Starting hiddify-core with config: $HID_CONF options: $HID_OPT"
    ./hiddify-core run -d "$HID_OPT" -c "$HID_CONF" &
    started=1
fi

if [ -f "$SINGBOX_CONF" ]; then
    echo "Starting sing-box with config: $SINGBOX_CONF"
    sing-box run -c "$SINGBOX_CONF" &
    started=1
fi

if [ "$started" -eq 0 ]; then
    echo "No valid config found, container will stay idle"
    tail -f /dev/null
fi

# Wait for background processes
wait