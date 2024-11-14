#!/bin/bash

# Make a backup
TIME=$(date +"%Y-%m-%dT%H:%M:%S")
SOURCE_FILE="/usr/share/X11/xkb/rules/evdev.xml"
BACKUP_FILE="./evdev.xml-$TIME.backup"

cp "$SOURCE_FILE" "$BACKUP_FILE"

# Replace with a flag
sed -i 's/<shortDescription>en/<shortDescription>🇬🇧/g' "$SOURCE_FILE"
sed -i 's/<shortDescription>ru/<shortDescription>🇷🇺/g' "$SOURCE_FILE"


