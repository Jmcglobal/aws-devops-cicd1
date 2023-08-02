#!/bin/bash
#Stopping existing node servers
lsof -i:3000 | grep LISTEN >/dev/null
status=$?  # Removed the unnecessary `echo` and backticks here
if [ "$status" -eq 0 ]; then  # Corrected the comparison operator here
    pid=`lsof -i:3000 | grep LISTEN | awk -F " " '{ print $2 }'`  # Also used $() instead of backticks for command substitution
    kill $pid
else
  echo "No process is running"
fi