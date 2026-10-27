#!/bin/bash

if pgrep -x "nmtui" > /dev/null; then
  killall nmtui
else
  ghostty -e nmtui
fi
