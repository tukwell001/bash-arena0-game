#!/bin/bash


if [ "$#" -eq 0 ]; then
  read -rp "Enter the word or phrase to search for: " search_term
else
  search_term="$*"
fi

echo "Searching for \"$search_term\" in all .log files..."
grep -Rl -- "$search_term" -- *.log

