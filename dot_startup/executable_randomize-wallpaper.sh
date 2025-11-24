#!/bin/bash
WALLPAPER_DIR="$HOME/.wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

echo "Current wall is $CURRENT_WALL"
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name $(basename "$CURRENT_WALL") | shuf -n 1)
echo "$WALLPAPER"

hyprctl hyprpaper reload , "$WALLPAPER"
