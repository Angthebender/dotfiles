#!/usr/bin/env bash
# 0-3 -> thin braille bars, ";" -> a space between bars
dict="s/;/ /g;s/0/⡀/g;s/1/⡄/g;s/2/⡆/g;s/3/⡇/g"

cava -p ~/.config/cava/waybar_config | while read -r line; do
  if [[ "$line" =~ ^[0\;]*$ ]]; then
    echo '{"text":"","class":"idle"}'
  else
    bars=$(echo "$line" | sed "$dict")
    echo "{\"text\":\"$bars\",\"class\":\"playing\"}"
  fi
done
