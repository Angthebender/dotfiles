#!/bin/bash

if pgrep -x "bluetui" > /dev/null; then
  killall bluetui
else
  ghostty -e bluetui
fi
