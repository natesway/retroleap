#!/bin/bash
if test -f "$1/usr/share/gmenunx/gmenunx"; then
	echo "gmenunx found!"
	mkdir -p $1/.gmenunx/sections/emulators
	if test -f "$1/usr/bin/PicoDrive"; then
		cp board/leapfrog/lfx000/configs/gmenunx/menuitems/picodrive $1/.gmenunx/sections/emulators/picodrive
		echo "adding picodrive icon"
	fi
fi
