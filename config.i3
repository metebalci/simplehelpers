
# display a random wallpaper from ~/wallpapers folder
exec --no-startup-id feh --randomize --bg-center ~/wallpapers/*

# run chrome in a horizontal or vertical split
# force-device-scale-factor is for 4K monitor
bindsym $mod+Shift+g split h; exec /usr/bin/google-chrome-stable --force-device-scale-factor=2
bindsym $mod+Shift+h split v; exec /usr/bin/google-chrome-stable --force-device-scale-factor=2

# capture whole screen and move the file to ~/screenshots
bindsym Shift+Print exec scrot -e 'mv $f ~/screenshots/'

# capture the focused window and move the file to ~/screenshots
bindsym Print exec scrot -u -e 'mv $f ~/screenshots/'
