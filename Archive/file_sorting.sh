#!/bin/bash


ls -lhS
ls -lhSr
ls -lhSr *.txt
du -ah --max-depth=1 | grep "\.txt$" | sort -h




