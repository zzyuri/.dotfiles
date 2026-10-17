
#!/bin/bash

WALLPAPER_DIR="$HOME/Media/pictures/wallpapers"

while true; do
    feh --randomize --bg-fill "$WALLPAPER_DIR"/*
    sleep 3600
done

