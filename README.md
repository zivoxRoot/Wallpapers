# Wallpapers

This folder contains all the wallpapers for the config, it is originally meant to be stored in $HOME/Pictures/wallpapers/
The wallpaper selector will only show you the JPG files in **./**.

---

## File structure

**./unused/** -> folder for cool wallpaper you want to keep but not actively use.

## Why only JPG ?
The current config only supports JPG files for multiple reasons :

- Hyprlock uses the current wallpaper image as its own background, the current wallpaper is cached in $HOME/current_wallpaper/current.jpg, because when cached the wallpaper is renamed as 'current.jpg', we need jpg files in our wallpapers stock. To support other wallpaper formats you need to change the current hyprlock background solution.
- The wallpaper selector script only handle JPG files, it can be changed pretty easily to be able to use other formats, learn more in the readme at $HOME/.config/rofi/README.md

## Image conversion
To convert any PNG file to JPG, use ImageMagick (https://imagemagick.org/) which comes preinstalled in this setup.

1. Single image conversion :

```
magick input.png output.jpg
```

2. Multiple images conversion :

> This one-liner script will convert all the PNG files in your current folder to JPG, without deleting the PNG ones.

```
for f in *.png; do magick "$f" "${f%.png}.jpg"; done

```
