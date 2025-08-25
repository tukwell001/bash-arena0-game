#!/bin/bash


DIRECTORY="Arena"
THRESHOLD=1

USAGE=$(du -sm "$DIRECTORY" | awk '{print $1}')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage for $DIRECTORY is at $USAGE%!"
esle
    echo "Disk usage for $DIRECTORY is at $USAGE%. All is well."
fi


