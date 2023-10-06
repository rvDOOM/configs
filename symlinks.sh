#!/bin/bash


DIR=$(pwd)


if [ -d ~/.config/hypr ]; then
	if [ -L ~/.config/hypr ]; then
		rm ~/.config/hypr
	else
		rm -rf ~/.config/hypr
	fi
fi

ln -sfn $DIR/hypr/ ~/.config/
