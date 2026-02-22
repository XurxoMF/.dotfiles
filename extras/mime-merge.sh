#!/usr/bin/env bash

# Get's the new registered mimes and adds them to the "~/.config/mimeapps.list"
# without overiding the current configured ones.

MIMEINFO="/usr/share/applications/mimeinfo.cache"
MIMEAPPS="${1:-$HOME/.config/mimeapps.list}"

if [[ ! -f "$MIMEAPPS" ]]; then
    echo "Couldn't find $MIMEAPPS"
    exit 1
fi

NEW=$(comm -23 \
    <(awk -F'=' '/^[^[]/ {print $1}' "$MIMEINFO" | sort -u) \
    <(awk -F'=' '/^[^[]/ {print $1}' "$MIMEAPPS" | sort -u))

COUNT=$(echo "$NEW" | grep -c .)

if [[ $COUNT -eq 0 ]]; then
    echo "There are no new MIME types to add!"
    exit 0
fi

echo "${NEW//$'\n'/$'=\n'}=" >> "$MIMEAPPS"
echo "Added $COUNT new MIME types to $MIMEAPPS"
