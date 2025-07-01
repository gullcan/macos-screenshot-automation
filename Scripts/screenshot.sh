#!/bin/bash

TIMESTAMP=$(date "+%Y-%m-%d_%H-%M-%S")
SAVE_DIR="/Users/gulcandogan/Pictures/scheduled_screenshots"

mkdir -p "$SAVE_DIR"

screencapture -x "$SAVE_DIR/ss_$TIMESTAMP.png"

