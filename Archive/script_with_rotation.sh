#!/bin/bash

SOURCE_DIR="Arena"
BACKUP_DIR="Backups"

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"
echo "Created backup: $BACKUP_NAME"

cd "$BACKUP_DIR" || exit
ls -t | sed -e '1,5d' | while IFS= read -r file; do
    rm -f "$file"
done
