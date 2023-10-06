#!/bin/bash


# The directory where configs repo resides
DIR=$(pwd)
SCRIPTDIR=~/.scripts

# Hyprland symlink
HYPRCONFIG=~/.config/hypr

if [ -d $HYPRCONFIG ]; then
	if [ -L $HYPRCONFIG ]; then
		echo "Existing Hyprland config link. Removing."
		rm $HYPRCONFIG
	else
		echo "Existing Hyprland directory. Removing."
		rm -rf $HYPRCONFIG
	fi
fi

echo "Creating Hyprland symlink."
ln -sfn $DIR/hypr/ ~/.config/


# Waybar symlink
WAYBARDIR=~/.config/waybar

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
ln -sfn $DIR/waybar/ ~/.config/

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
