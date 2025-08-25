#!/bin/bash


MONITORED_DIR="${1:-.}"
LOGFILE="${2:-./file_changes.log}"

if ! command -v inotifywait >/dev/null; then
  echo "Error: inotifywait not installed. Please install inotify-tools."
  exit 1
fi

# Start monitoring and log: timestamp, directory, event, filename
inotifywait -m -r -e create,modify,delete --format '[%T] %w%f %e' --timefmt '%Y-%m-%d %H:%M:%S' "$MONITORED_DIR" \
  | tee -a "$LOGFILE"
