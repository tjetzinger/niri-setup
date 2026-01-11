#!/bin/bash
updates_pacman=$(checkupdates | wc -l)
updates_aur=$(yay -Qua 2>/dev/null | grep -v "\[ignored\]" | wc -l)
updates=$((updates_pacman + updates_aur))
printf '{"text": "%s", "alt": "%s", "tooltip": "%s updates"}' "$updates" "$updates" "$updates"
