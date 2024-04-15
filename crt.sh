#!/bin/bash

# Check if domain argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

TARGET="$1"
ENCODED_TARGET=$(echo "$TARGET" | sed 's/%/%25/g')

# Download the HTML content and extract subdomains
curl -fsSL "https://crt.sh/?q=%25.$ENCODED_TARGET" | \
grep -oE '\*?\.?[a-zA-Z0-9.-]+\.'"$TARGET" | \
sort -u > "$TARGET-crt.txt"
