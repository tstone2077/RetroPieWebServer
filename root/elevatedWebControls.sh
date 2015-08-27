#!/bin/bash

# Cron job that runs root activities based on the existence of a temp file. 
# The web api will write the temp file as needed

if [ -f /tmp/reboot.now ]; then
  rm -f /tmp/reboot.now
  /sbin/shutdown -r now 
fi
if [ -f /tmp/restartEmulationStation.now ]; then
  rm -f /tmp/restartEmulationStation.now
  pgrep -f emulationstation | xargs kill
  /usr/bin/emulationstation
fi
