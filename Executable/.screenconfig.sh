#!/bin/sh

function screenconfig() {
	{
		~/Executable/ScreenConfig/home.sh
	} || {
		~/Executable/ScreenConfig/work.sh
	} || {
		~/Executable/ScreenConfig/default.sh
	}
}
