#!/bin/sh
# first get the battery info section, then split it by ' = ', take the second part, replace '=' with : === valid JSON
ioreg -l -w 0 | grep BatteryInfo | awk -F" = " '{ print $2 }' | sed 's/=/\:/g'
