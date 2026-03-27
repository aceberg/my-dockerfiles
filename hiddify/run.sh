#!/bin/sh

SINGBOX_CONF="${SINGBOX_CONF:-/data/sing-box.json}"
HID_CONF="${HID_CONF:-/data/current-config.json}"
HID_OPT="${HID_OPT:-/data/options.json}"

if [ -f "$HID_CONF" ] && [ -f "$HID_OPT" ]; then
    echo "Starting hiddify-core with config: $HID_CONF"
    echo "options: $HID_OPT"
    exec ./hiddify-core run -d "$HID_OPT" -c "$HID_CONF" &
fi

if [ -f "$SINGBOX_CONF" ]; then
    echo "Starting sing-box with config: $SINGBOX_CONF"
    exec sing-box run -c "$SINGBOX_CONF"
fi