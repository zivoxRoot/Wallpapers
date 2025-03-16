#/bin/sh

# Set the selected wallpaper's theme
if [ "$1" = "catppuccin" ]; then
	swww img $HOME/.config/wallpapers/catppuccin/rain_world1.png -t grow --transition-pos 0.7,0.7
	# Cache the current theme
	echo "catppuccin" > $HOME/.config/wallpapers/theme.cache
	notify-send "Wallpaper" "wallpaper successfully changed to rain world"
fi

if [ "$1" = "green" ]; then
	swww img $HOME/.config/wallpapers/others/moon.png -t grow --transition-pos 0.7,0.7
	# Cache the current theme
	echo "green" > $HOME/.config/wallpapers/theme.cache
	notify-send "Wallpaper" "wallpaper successfully changed to moon"
fi
