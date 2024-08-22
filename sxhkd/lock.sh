#!/bin/bash

# Set the path to your video file
VIDEO_PATH="/home/john/.config/sxhkd/video.mp4"

# Save environment values that may get changed
export XSECURELOCK_SAVER=saver_mpv
export XSECURELOCK_DISCARD_FIRST_KEYPRESS=0
export XSECURELOCK_SHOW_DATETIME=0
export XSECURELOCK_SHOW_USERNAME=0
export XSECURELOCK_PASSWORD_PROMPT=time_hex
export XSECURELOCK_FONT=-misc-fixed-bold-r-normal--18-120-100-100-c-90-iso8859-15

# Define the mpv saver
export SAVER_MPV_COMMAND="mpv --really-quiet --fullscreen --no-stop-screensaver --no-input-default-bindings --input-conf=/dev/null --loop=inf --no-audio \"$VIDEO_PATH\""

# Start xsecurelock
xsecurelock
