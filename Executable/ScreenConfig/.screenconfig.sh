#!/bin/sh

function screenconfig() {
	{
		~/.config/i3/ScreenConfig/home.sh
	} || {
		~/.config/i3/ScreenConfig/work.sh
	} || {
		~/.config/i3/ScreenConfig/default.sh
	}
}
