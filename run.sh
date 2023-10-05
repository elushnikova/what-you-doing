#!/bin/zsh

WEEK_DAY=$(LC_TIME=en_US.UTF-8 date +'%a')
RESPONSE_FILE="./responses/$(date +'%Y-%m-%d').${WEEK_DAY:l}.txt"

# Run AppleScript and save response
response=$(osascript ./ui.applescript)

# Record the response along with a timestamp
echo "$(date): $response" >>$RESPONSE_FILE
