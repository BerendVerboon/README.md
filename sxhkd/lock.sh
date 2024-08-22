#!/bin/bash

# Set the path to your video file
VIDEO_PATH="video.mp4"

# Get the screen resolution
RESOLUTION=$(xrandr | grep '*' | awk '{print $1}')

# Loop the video until the screen is locked
mpv --no-audio --loop=inf --fullscreen --ontop --no-stop-screensaver --no-input-default-bindings --input-conf=/dev/null --title=lockscreen "$VIDEO_PATH" &

# Wait for the video player to open
sleep 1

# Now lock the screen. i3lock doesn't provide a proper way to put an overlay on top of other windows, 
# so the video will be underneath the blank i3lock screen.
# This is a limitation and xsecurelock could be considered for a more rich approach that can display videos on top.
i3lock

# After unlocking, kill mpv
pkill -f "mpv --no-audio --loop=inf --fullscreen --ontop --no-stop-screensaver --no-input-default-bindings --input-conf=/dev/null --title=lockscreen"
