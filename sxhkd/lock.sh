#!/bin/bash

# Save environment values that may get changed
export XSECURELOCK_SAVER="/home/john/.config/sxhkd/screen_saver.sh"
export XSECURELOCK_DISCARD_FIRST_KEYPRESS=0
export XSECURELOCK_SHOW_DATETIME=0
export XSECURELOCK_SHOW_USERNAME=0
export XSECURELOCK_PASSWORD_PROMPT=time_hex
export XSECURELOCK_FONT=-misc-fixed-bold-r-normal--18-120-100-100-c-90-iso8859-15

# Start xsecurelock
xsecurelock
