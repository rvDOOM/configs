#!/bin/bash

echo "$USER"
# The directory where configs repo resides
DIR=$(pwd)
SCRIPTDIR=$HOME/.scripts

# Hyprland symlink
HYPRCONFIG=$HOME/.config/hypr

if [ -d $HYPRCONFIG ]; then
	if [ -L $HYPRCONFIG ]; then
		echo "Existing Hyprland config link. Removing."
		rm $HYPRCONFIG
	else
		echo "Existing Hyprland directory. Removing."
		rm -rf $HYPRCONFIG
	fi
fi

ln -sfn $DIR/hypr/ $HOME/.config/
echo "Creating Hyprland symlink."

# Waybar symlink
WAYBARDIR=$HOME/.config/waybar

if [ -d $WAYBARDIR ]; then
	if [ -L $WAYBARDIR ]; then
		echo "Existing Waybar config link. Removing."
		rm $WAYBARDIR
	else
		echo "Existing Waybar directory. Removing."
		rm -rf $WAYBARDIR
	fi
fi

echo "Creating Waybar symlink."
ln -sfn $DIR/waybar/ $HOME/.config/

# swww Startup Script symlink
SWWW=$SCRIPTDIR/swww_startup.sh


if [ ! -d $SCRIPTDIR ]; then
	mkdir ~/.scripts
	echo "Created .scripts directory!"
fi

if [ ! -L $SWWW ]; then
	ln -s $DIR/swww/swww_startup.sh $SWWW
	echo "Created swww symlink!" 
fi

# greetd Config symlink
# needs to run in sudo
# Using this has a placeholder for now but need to figure out a more intuitive way of doing this
GREETD=/etc/greetd


if [ -d $GREETD ]; then
	if [ -L $GREETD ]; then
		echo "Existing greetd config link. Removing."
		rm $GREETD
	else
		echo "Existing greetd directory. Removing."
		rm -rf $GREETD
	fi
fi

echo "Creating greetd config symlink."
ln -sfn $DIR/greetd /etc/
